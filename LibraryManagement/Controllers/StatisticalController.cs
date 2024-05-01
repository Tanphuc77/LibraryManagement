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
                    total += detail.SOLUONGMUON ?? 0; // Ensure SOLUONGMUON is not null
                    var bookViewModel = new BookBorrowing
                    {
                        MASACH = (int)detail.MASACH,
                        TENSACH = detail.TENSACH, // Assuming TENSACH is the property for the book name
                        NGAYMUON = (DateTime)borrowBook.NGAYMUON,
                        TotalBorrowQuantity = total
                    };
                    bookViewModels.Add(bookViewModel);
                }
            }
            return View(bookViewModels);
        }
    }
}