using LibraryManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LibraryManagement.Controllers
{
    public class LibrarianTypeController : Controller
    {
        QuanLyThuVienEntities db = new QuanLyThuVienEntities();
        // GET: LibrarianType
        public ActionResult ListLibrarian()
        {
            var Librarian = db.LOAITHUTHUs.ToList();
            return View(Librarian);
        }
        [HttpGet]
        public ActionResult CreateLibrarianType()
        {
            if (Session["TaiKhoan"] != null)
            {
                return View();
            }
            else
            {
                Response.StatusCode = 404;
                return null;
            }
        }
        [HttpPost]
        public ActionResult CreateLibrarianType(LOAITHUTHU model)
        {
            try
            {
                db.LOAITHUTHUs.Add(model);
                db.SaveChanges();
                return RedirectToAction("ListRole");
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", ex.Message);
                return View(model);
            }

        }
        [HttpGet]
        public ActionResult UpdateLibrarianType(int? id)
        {
            if (id == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            LOAITHUTHU LibrarianType = db.LOAITHUTHUs.SingleOrDefault(m => m.MALOAI == id);
            if (LibrarianType == null)
            {
                return HttpNotFound();
            }
            return View(LibrarianType);
        }
        [HttpPost]
        public ActionResult UpdateLibrarianType(LOAITHUTHU model)
        {
            try
            {
                var updateLibrarianType = db.LOAITHUTHUs.Find(model.MALOAI);
                updateLibrarianType.TENLOAI = model.TENLOAI;
                db.SaveChanges();
                return RedirectToAction("ListLibrarian");
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", ex.Message);
                return View(model);
            }
            
        }
        public ActionResult RemoveLibrarianType(int? id)
        {
            try
            {
                if (id == null)
                {
                    Response.StatusCode = 404;
                    return null;
                }
                LOAITHUTHU LibrarianType = db.LOAITHUTHUs.SingleOrDefault(m => m.MALOAI == id);
                if (LibrarianType == null)
                {
                    return HttpNotFound();
                }
                // Xác nhận xóa ở đây
                if (!ConfirmedToDelete())
                {
                    // Nếu không xác nhận, có thể chuyển hướng hoặc hiển thị thông báo khác
                    return RedirectToAction("ListLibrarian");
                }
                db.LOAITHUTHUs.Remove(LibrarianType);
                db.SaveChanges();
                return RedirectToAction("ListLibrarian");
            }
            catch (Exception)
            {
                return RedirectToAction("ErrorRemoveLibrarianType"); // Chuyển hướng đến trang lỗi chung
            }
        }
        private bool ConfirmedToDelete()
        {
            //  true để cho phép xóa
            return true;
        }
        public ActionResult ErrorRemoveLibrarianType()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Decentralization(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Http404", "Error");
            }
            LOAITHUTHU listMember = db.LOAITHUTHUs.SingleOrDefault(m => m.MALOAI == id);
            if (listMember == null)
            {
                return HttpNotFound();
            }
            ViewBag.ListRole = db.QUYENs;
            ViewBag.ListMemberRole = db.THUTHUQUYENs.Where(m => m.MALOAI == id);
            return View(listMember);
        }
        [HttpPost]
        public ActionResult Decentralization(int? Id_Member, IEnumerable<THUTHUQUYEN> listDecentralization)
        {
            // Trường hợp: Nếu Đã Phân Quyền nhưng muốn phân quyền lại
            // Bước 1: Xóa những quyền thuộc loại tv đó 
            var listDecentralized = db.THUTHUQUYENs.Where(m => m.MALOAI == Id_Member);
            if (listDecentralized.Count() != 0)
            {
                db.THUTHUQUYENs.RemoveRange(listDecentralized);
                db.SaveChanges();
            }
            // Kiểm tra danh sách quyền được check
            if (listDecentralized != null)
            {
                foreach (var item in listDecentralization)
                {
                    item.MALOAI = int.Parse(Id_Member.ToString());
                    db.THUTHUQUYENs.Add(item);
                }
                db.SaveChanges();
            }
            return RedirectToAction("ListLibrarian");
        }
    }
}