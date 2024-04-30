using LibraryManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LibraryManagement.Controllers
{
    //[Authorize(Roles = "QUANLYSACH")]
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

        public List<BookBorrowing> GetBookBorrowings()
        {
            List<BookBorrowing> bookBorrowings = new List<BookBorrowing>();

            using (QuanLyThuVienEntities db = new QuanLyThuVienEntities())
            {
                // Truy vấn cơ sở dữ liệu để lấy thông tin về mượn sách và tính tổng số lượng mượn
                bookBorrowings = (from ct in db.CHITIETMUONTRAs
                                  group ct by new { ct.MASACH, ct.TENSACH, ct.MUONTRA.NGAYMUON } into g
                                  select new BookBorrowing
                                  {
                                      MASACH = (int)g.Key.MASACH,
                                      TENSACH = g.Key.TENSACH,
                                      NGAYMUON = (DateTime)g.Key.NGAYMUON,
                                      TotalQuantityBorrowed = (int)g.Sum(ct => ct.SOLUONGMUON)
                                  }).ToList();
            }

            return bookBorrowings;
        }
        public ActionResult ResultMonthYear()
        {
            var bookBorrowings = GetBookBorrowings();
            return View(bookBorrowings);
            //var monthYear = db.CHITIETMUONTRAs
            //                .GroupBy(ct => new { ct.MASACH, ct.TENSACH, ct.MUONTRA.NGAYMUON })
            //                .Select(g => new
            //                {
            //                    MASACH = g.Key.MASACH,
            //                    TENSACH = g.Key.TENSACH,
            //                    NGAYMUON = g.Key.NGAYMUON,
            //                    TongSoLuongMuon = g.Sum(ct => ct.SOLUONGMUON)
            //                })
            //                .OrderByDescending(g => g.MASACH)
            //                .ToList();
            //ViewBag.TongSoLuongMuon = monthYear.Select(b => b.TongSoLuongMuon);
            //return View(monthYear);
        }
    }
}