using LibraryManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LibraryManagement.Controllers
{
    [Authorize(Roles = "QUANLYSACH")]
    public class StatisticalController : Controller
    {
        QuanLyThuVienEntities db = new QuanLyThuVienEntities();
        // GET: Statistical
        public ActionResult Statistical()
        {
            ViewBag.ThongKeSachMuonChuaduyet = ThongKeSachMuonChuaduyet();
            ViewBag.ThongKeSachMuonDaduyet = ThongKeSachMuonDaduyet();
            ViewBag.ThongKeSachTra = ThongKeSachTra();
            ViewBag.ThongKeDocGia = ThongKeDocGia();
            return View();
        }
        public double ThongKeSachMuonChuaduyet()
        {
            int donMuonChuaDuyet = db.MUONTRAs.Count(m => m.TRANGTHAIMUON == false && m.TRANGTHAITRA == false && m.DAXOA == false);
            return donMuonChuaDuyet;
        }
        public double ThongKeSachMuonDaduyet()
        {
            int donMuonDaDuyet = db.MUONTRAs.Count(m => m.TRANGTHAIMUON == true && m.TRANGTHAITRA == false && m.DAXOA == false);
            return donMuonDaDuyet;
        }

        public double ThongKeSachTra()
        {
            int donTra = db.MUONTRAs.Count(m => m.TRANGTHAITRA == true && m.DAXOA == false);
            return donTra;
        }
        public double ThongKeDocGia()
        {
            int thanhVien = db.DOCGIAs.Count();
            return thanhVien;
        }
        public ActionResult MonthYear()
        {
            return View();
        }

        public ActionResult ResultMonthYear(int month, int year)
        {
            var borrowBooks = db.MUONTRAs.Where(m => m.NGAYMUON.Value.Month == month && m.NGAYMUON.Value.Year == year).ToList();
            var bookViewModels = new List<BookBorrowing>();
            foreach (var borrowBook in borrowBooks)
            {
                int total = 0;
                foreach (var detail in borrowBook.CHITIETMUONTRAs)
                {
                    total += detail.SOLUONGMUON ?? 0;
                    var bookViewModel = new BookBorrowing
                    {
                        MASACH = (int)detail.MASACH,
                        TENSACH = detail.TENSACH,
                        NGAYMUON = (DateTime)borrowBook.NGAYMUON,
                        TotalBorrowQuantity = total
                    };
                    bookViewModels.Add(bookViewModel);
                }
            }

            // Sắp xếp danh sách theo tổng số lượng mượn giảm dần
            bookViewModels = bookViewModels.OrderByDescending(x => x.TotalBorrowQuantity).ToList();

            return PartialView(bookViewModels);
        }
        public ActionResult OutofdateBook()
        {
            List<OutofdateBook> outofdateBooks = new List<OutofdateBook>();

            // Kết nối với cơ sở dữ liệu và lấy thông tin cần thiết
            using (QuanLyThuVienEntities db = new QuanLyThuVienEntities())
            {
                // Truy vấn để lấy thông tin về các đọc giả mượn sách quá hạn
                var query = from muontra in db.MUONTRAs
                            join chitiet in db.CHITIETMUONTRAs on muontra.MAMUON equals chitiet.MAMUON
                            join docgia in db.DOCGIAs on muontra.ID equals docgia.ID
                            join lop in db.LOPs on docgia.MALOP equals lop.MALOP
                            where muontra.HANTRA < DateTime.Now // Lọc ra các đọc giả mượn sách quá hạn
                            select new OutofdateBook
                            {
                                HOTEN = docgia.HOTEN,
                                TENLOP = lop.TENLOP,
                                TENSACH = chitiet.TENSACH,
                                SOLUONGMUON = (int)chitiet.SOLUONGMUON,
                                NGAYMUON = (DateTime)muontra.NGAYMUON,
                                HANTRA = (DateTime)muontra.HANTRA
                            };

                // Thêm kết quả vào danh sách outofdateBooks
                outofdateBooks = query.ToList();
            }

            // Trả về view và truyền danh sách outofdateBooks vào view
            return View(outofdateBooks);
        }
        public ActionResult BorrowBooksMax10()
        {
            var borrowBook = db.SACHes.OrderByDescending(m => m.SOLUONGMUON).Take(10);
            return View(borrowBook);
        }
        public ActionResult ViewBooksMax10()
        {
            var ViewBooks = db.SACHes.OrderByDescending(m => m.LUOTXEM).Take(10);
            return View(ViewBooks);
        }

    }
}