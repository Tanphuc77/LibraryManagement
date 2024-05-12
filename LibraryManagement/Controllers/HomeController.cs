using CaptchaMvc.HtmlHelpers;
using LibraryManagement.Models;
using PagedList;
using System.Linq;
using System.Web.Mvc;
using System.Web.UI;

namespace LibraryManagement.Controllers
{
    public class HomeController : Controller
    {
        QuanLyThuVienEntities db = new QuanLyThuVienEntities();
        // GET: Home
        public ActionResult Index(int? page)
        {
            var listBook = db.SACHes.OrderByDescending(m => m.MASACH).ToList();
            int pageSize = 16;
            int pageNumber = (page ?? 1);
            return View(listBook.ToPagedList(pageNumber, pageSize));
        }
        public ActionResult BookPartial()
        {
            return View();
        }
        public ActionResult NewBook()
        {
            var book = db.SACHes.Where(s => s.DAXOA == false).OrderByDescending(s => s.NGAYCAPNHAT).Take(10).ToList();
            return View(book);
        }
        [HttpGet]
        public ActionResult SingUp()
        {
            ViewBag.MALOP = new SelectList(db.LOPs.OrderBy(m => m.TENLOP), "MALOP", "TENLOP");
            return View();
        }
        [HttpPost]
        public ActionResult SingUp(DOCGIA model, FormCollection f)
        {
            ViewBag.MALOP = new SelectList(db.LOPs.OrderBy(m => m.TENLOP), "MALOP", "TENLOP");
            // Kiem tra capcha 
            if (this.IsCaptchaValid("Capcha is not valid"))
            {

                if (ModelState.IsValid)//Kiểm tra xem liệu dữ liệu được submit từ trang web có hợp lệ hay không. 
                {
                    DOCGIA User = db.DOCGIAs.SingleOrDefault(m => m.USERNAME == model.USERNAME);
                    if (User == null)
                    {
                        string salt = BCrypt.Net.BCrypt.GenerateSalt();
                        string hashedPassword = BCrypt.Net.BCrypt.HashPassword(model.PASSWORD, salt);
                        string hashedConfirmPassword = BCrypt.Net.BCrypt.HashPassword(model.ConfirmPassword, salt); // Hash mật khẩu xác nhận
                        model.PASSWORD = hashedPassword;
                        model.ConfirmPassword = hashedConfirmPassword;
                        model.TINHTRANG = true;
                        if (model.PASSWORD != model.ConfirmPassword)
                        {
                            TempData["NoMatch"] = "Mật khẩu không trùng khớp";
                            return View();
                        }
                        db.DOCGIAs.Add(model);
                        db.SaveChanges();
                        return RedirectToAction("Login");
                    }
                    ViewBag.TrungLap = "Tên tài khoản giống với tài khoản khác";
                    return View();
                }
                else
                {
                    ViewBag.ThongBao = "Đăng ký không thành công";
                }
                return View();
            }
            ViewBag.Captcha = "Sai mã Captcha";
            return View();
        }
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

            DOCGIA User = db.DOCGIAs.SingleOrDefault(m => m.USERNAME == Username);

            if (User != null)
            {
                bool isPasswordCorrect = BCrypt.Net.BCrypt.Verify(Password, User.PASSWORD);
                if (isPasswordCorrect)
                {
                    if (User.TINHTRANG == false)
                    {
                        TempData["Blockaccess"] = "Tài khoản của bạn đã bị chặn!";
                        return View();

                    }
                    Session["TaiKhoan"] = User;
                    return RedirectToAction("Index", "Home");
                }
            }
            TempData["Notification"] = "Tài khoản hoặc mật khẩu không đúng";
            return View();
        }
        public ActionResult Logout()
        {
            Session["TaiKhoan"] = null;
            return RedirectToAction("Login");
        }
        public ActionResult Menu()
        {
            var listCategory = db.THELOAIs.Where(m => m.DAXOA == false);
            return View(listCategory);
        }
        public ActionResult Navbar()
        {
            var listPublisher = db.NHAXUATBANs.Where(m => m.DAXOA == false);
            return View(listPublisher);
        }
        public ActionResult BooksByGenre(int? maLoai, string name, int? page)
        {
            var book = db.SACHes.Where(s => s.MATHELOAI == maLoai && s.DAXOA == false).ToList();

            // Thực hiện phân trang theo loại 
            int pageSize = 9;// Số sản phẩm có trên trang 
            int pageNumbber = (page ?? 1); // số trang hiện tại

            ViewBag.MaLoai = maLoai;
            return View(book.ToPagedList(pageNumbber, pageSize));
        }
        public ActionResult NavbarBookPublisher()
        {
            var listPublisher = db.NHAXUATBANs.Where(m => m.DAXOA == false);
            return View(listPublisher);
        }
        public ActionResult BookPublisher(int? maNhaXuatBan, string name, int? Page)
        {
            var book = db.SACHes.Where(m => m.MANHAXUATBAN == maNhaXuatBan && m.DAXOA == false).ToList();
            int pageSize = 9;
            int pageNumbber = (Page ?? 1);

            ViewBag.ManhaxuatBan = maNhaXuatBan;
            return View(book.ToPagedList(pageNumbber, pageSize));
        }
        public ActionResult MyAccount(int? id, string tendocgia)
        {
            DOCGIA User = db.DOCGIAs.SingleOrDefault(m => m.ID == id);
            return View(User);
        }
        public ActionResult BorrowBooks(int? id)
        {
            // Lấy đọc giả đang đăng nhập
            var user = db.DOCGIAs.SingleOrDefault(s => s.ID == id);
            if (user == null)
            {
                Response.StatusCode = 404;
                return null;
            }

            // Lấy sách mà đọc giả mượn
            var borrowbooks = db.MUONTRAs.Where(s => s.ID == user.ID && s.DAXOA == false).OrderByDescending(m=>m.NGAYMUON);
            return View(borrowbooks);
        }
        public ActionResult DetailBorrowBooks(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.BadRequest);
            }
            MUONTRA BorrowBooks = db.MUONTRAs.SingleOrDefault(m => m.MAMUON == id);
            if (BorrowBooks == null)
            {
                return HttpNotFound();
            }

            // Hiển thị chi tiết phiếu lên view
            var listChiTietMuonSach = db.CHITIETMUONTRAs.Where(m => m.MAMUON == id);
            ViewBag.ChiTietMuonSach = listChiTietMuonSach;

            return View(BorrowBooks);
        }
        [HttpGet]
        public ActionResult Cancel(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.BadRequest);
            }
            MUONTRA BorrowBooks = db.MUONTRAs.SingleOrDefault(m => m.MAMUON == id);
            if (BorrowBooks == null)
            {
                return HttpNotFound();
            }
            var listDetailBorrowBooks = db.CHITIETMUONTRAs.Where(m => m.MAMUON == id);
            ViewBag.DetailBorrowBooks = listDetailBorrowBooks;

            return View(BorrowBooks);
        }
        [HttpPost]
        public ActionResult Cancel(MUONTRA model)
        {
            // Truy vấn dữ liệu đơn hàng đó
            MUONTRA updateBorrowBooks = db.MUONTRAs.SingleOrDefault(m => m.MAMUON == model.MAMUON);
            updateBorrowBooks.DAXOA = true;
            db.SaveChanges();
            return RedirectToAction("BorrowBooks", new { id = model.ID });
        }
        public ActionResult SearchResultsPartial(string keyWork, int? Page)
        {
            //int pageSize = 12;
            //int pageNumber = (Page ?? 1);
            var listBook = db.SACHes.Where(m => m.TENSACH.Contains(keyWork));
            ViewBag.keyWork = keyWork;
            return PartialView(listBook.OrderBy(m => m.NGAYCAPNHAT)/*.ToPagedList(pageNumber, pageSize)*/);
        }
        [HttpGet]
        public ActionResult ChangePassword(int? id, string tendocgia)
        {
            DOCGIA User = db.DOCGIAs.SingleOrDefault(m => m.ID == id);
            return View(User);
        }
        [HttpPost]
        public ActionResult ChangePassword(DOCGIA model)
        {
            DOCGIA User = db.DOCGIAs.SingleOrDefault(m => m.ID == model.ID);
            if (User != null)
            {
                if (BCrypt.Net.BCrypt.Verify(model.OldPassword, User.PASSWORD)) // Kiểm tra mật khẩu cũ
                {
                    string salt = BCrypt.Net.BCrypt.GenerateSalt();
                    string hashedPassword = BCrypt.Net.BCrypt.HashPassword(model.PASSWORD, salt); // Hash mật khẩu mới
                    string hashedConfirmPassword = BCrypt.Net.BCrypt.HashPassword(model.ConfirmPassword, salt); // Hash mật khẩu xác nhận
                    User.PASSWORD = hashedPassword;
                    User.ConfirmPassword = hashedConfirmPassword;
                    if (model.PASSWORD != model.ConfirmPassword)
                    {
                        TempData["NoMatch"] = "Mật khẩu mới không trùng khớp";
                        return View();
                    }
                    db.SaveChanges();
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    TempData["WrongPassword"] = "Mật khẩu cũ không đúng";
                    return View();
                }
            }
            return View();
        }

    }
}