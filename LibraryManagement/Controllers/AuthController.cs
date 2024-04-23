using LibraryManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using System.Web.Security;

namespace LibraryManagement.Controllers
{
    public class AuthController : Controller
    {
        QuanLyThuVienEntities db = new QuanLyThuVienEntities();
        // GET: Login
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(FormCollection f)
        {
            string Username = f["USERNAME"].ToString();
            string Password = f["PASSWORD"].ToString();

            THUTHU manage = db.THUTHUs.SingleOrDefault(m => m.USERNAME == Username);
            if (manage != null)
            {
                bool isPasswordCorrect = BCrypt.Net.BCrypt.Verify(Password, manage.PASSWORD);
                if (isPasswordCorrect)
                {
                    if (manage.TINHTRANG == false)
                    {
                        TempData["Notification1"] = "Tài khoản hiện tại chưa được đưa vào sử dụng!";
                        return View();
                    }
                    Session["TaiKhoan"] = manage;
                    var listAuthority = db.THUTHUQUYENs.Where(m => m.MALOAI == manage.MALOAI);
                    string authority = "";
                   
                    foreach (var item in listAuthority)
                    {
                        authority += item.QUYEN.MAQUYEN + ",";
                    }
                    if (String.IsNullOrEmpty(authority))
                    {
                        TempData["Notification2"] = "Tài khoản hiện tại chưa được cấp quyền!";
                        return View();
                    }
                    authority = authority.Substring(0, authority.Length - 1); // Cắt đi dấu , thừa
                    Authorization(manage.USERNAME.ToString(), authority);
                    return RedirectToAction("ListBook", "Book");
                }
            }
            TempData["Notification3"] = "Tài khoản hoặc mật khẩu không đúng";
            return View();
        }
        public ActionResult Logout()
        {
            Session["TaiKhoan"] = null;
            FormsAuthentication.SignOut();
            return RedirectToAction("Login");
        }
        public void Authorization(string User, string authority)
        {
            FormsAuthentication.Initialize();

            var ticket = new FormsAuthenticationTicket(1,
                User, // User
                DateTime.Now, //Bắt đầu 
                DateTime.Now.AddHours(3), //Kết thúc
                true,// remember
                authority,
                FormsAuthentication.FormsCookiePath
                );
            var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(ticket));
            if (ticket.IsPersistent) cookie.Expires = ticket.Expiration;

            Response.Cookies.Add(cookie);
        }
        public ActionResult Insufficientaccessrights()
        {
            return View();
        }
    }
}
