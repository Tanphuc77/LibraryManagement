using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LibraryManagement.Models;
using PagedList;

namespace LibraryManagement.Controllers
{
    public class BookDetailController : Controller
    {
        QuanLyThuVienEntities db = new QuanLyThuVienEntities();
        // GET: BookDetail
        public ActionResult BookDetail(int maTheLoai, int maNhaXuatBan, int? maSach, string tensach)
        {
            if (maSach == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            var book = db.SACHes.SingleOrDefault(s => s.MATHELOAI == maTheLoai && s.MANHAXUATBAN == maNhaXuatBan && s.MASACH == maSach);
            if (book == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            // Tăng số lượt xem của cuốn sách lên 1
            book.LUOTXEM++;
            // Lưu thay đổi vào cơ sở dữ liệu
            db.SaveChanges();
            return View(book);
        }
        public ActionResult BookRelate(int maTheLoai, int maNhaXuatBan, int? maSach)
        {
            // Lấy sách đang xem
            var bookWatched = db.SACHes.SingleOrDefault(s => s.MATHELOAI == maTheLoai && s.MANHAXUATBAN == maNhaXuatBan && s.MASACH == maSach);
            if (bookWatched == null)
            {
                Response.StatusCode = 404;
                return null;
            }

            // Lấy sản phẩm liên quan
            var bookRelate = db.SACHes
            .Where(s => s.MATHELOAI == bookWatched.MATHELOAI && s.MASACH != bookWatched.MASACH && s.DAXOA == false)
            .OrderByDescending(s => s.NGAYCAPNHAT).ToList();

            return View(bookRelate);
        }
        public ActionResult SearchResultsPartial(string keyWork, int? Page)
        {
            int pageSize = 12;
            int pageNumber = (Page ?? 1);
            var listBook = db.SACHes.Where(m => m.TENSACH.Contains(keyWork));
            ViewBag.keyWork = keyWork;
            return PartialView(listBook.OrderBy(m => m.NGAYCAPNHAT).ToPagedList(pageNumber, pageSize));
        }
    }

}