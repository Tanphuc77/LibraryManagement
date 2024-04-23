using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using LibraryManagement.Models;
using PagedList;

namespace LibraryManagement.Controllers
{
    public class SearchUserController : Controller
    {
        // GET: Find
        QuanLyThuVienEntities db = new QuanLyThuVienEntities();
        public ActionResult SearchResults(string keyWork, int? Page)
        {
            int pageSize = 12;
            int pageNumber = (Page ?? 1);
            var listBook = db.SACHes.Where(m => m.TENSACH.Contains(keyWork));
            ViewBag.keyWork = keyWork;
            return View(listBook.OrderBy(m => m.TENSACH).ToPagedList(pageNumber, pageSize));
        }
        public ActionResult GetSearchKeywords(string keyWork)
        {
            // Láy từ khóa tìm kiếm sau đó gọi đến KetQuaTimKiem
            return RedirectToAction("SearchResults", new { @keyWork = keyWork });
        }

        public ActionResult SearchResultsPartial (string keyWork, int? Page)
        {
            int pageSize = 12;
            int pageNumber = (Page ?? 1);
            var listBook = db.SACHes.Where(m => m.TENSACH.Contains(keyWork));
            ViewBag.keyWork = keyWork;
            return PartialView(listBook.OrderBy(m => m.NGAYCAPNHAT).ToPagedList(pageNumber, pageSize));
        }
    }
}