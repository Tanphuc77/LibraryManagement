using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LibraryManagement.Models;
namespace LibraryManagement.Controllers
{

    [Authorize(Roles = "QUANLYQUYEN")]
    public class AccessrightsController : Controller
    {
        QuanLyThuVienEntities db = new QuanLyThuVienEntities();
        // GET: Accessrights
        public ActionResult ListRole()
        {
            if (Session["TaiKhoan"] != null)
            {
                var Role = db.QUYENs.ToList();
                return View(Role);
            }
            else
            {
                Response.StatusCode = 404;
                return null;
            }
        }
        [HttpGet]
        public ActionResult CreateRole()
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
        public ActionResult CreateRole(QUYEN model)
        {
            try
            {
                db.QUYENs.Add(model);
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
        public ActionResult UpdateRole(string id)
        {
            if (id == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            QUYEN Role = db.QUYENs.SingleOrDefault(m => m.MAQUYEN == id);
            if (Role == null)
            {
                return HttpNotFound();
            }
            return View(Role);
        }
        [HttpPost]
        public ActionResult UpdateRole(QUYEN model)
        {
            var updateRole = db.QUYENs.Find(model.MAQUYEN);
            updateRole.TENQUYEN = model.TENQUYEN;
            db.SaveChanges();
            return RedirectToAction("ListRole");
        }
        public ActionResult RemoveRole(string id)
        {
            try
            {
                if (id == null)
                {
                    Response.StatusCode = 404;
                    return null;
                }
                QUYEN Role = db.QUYENs.SingleOrDefault(m => m.MAQUYEN == id);
                if (Role == null)
                {
                    return HttpNotFound();
                }
                // Xác nhận xóa ở đây
                if (!ConfirmedToDelete())
                {
                    // Nếu không xác nhận, có thể chuyển hướng hoặc hiển thị thông báo khác
                    return RedirectToAction("ListRole");
                }
                db.QUYENs.Remove(Role);
                db.SaveChanges();
                return RedirectToAction("ListRole");
            }
            catch (Exception )
            {
                return RedirectToAction("ErrorRemoveRole"); // Chuyển hướng đến trang lỗi chung
            }
        }
        private bool ConfirmedToDelete()
        {
            //  true để cho phép xóa
            return true;
        }
        public ActionResult ErrorRemoveRole()
        {
            return View();
        }
    }
}