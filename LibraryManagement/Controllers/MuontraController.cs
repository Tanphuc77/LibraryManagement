using LibraryManagement.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LibraryManagement.Controllers
{
    [Authorize(Roles = "QUANLYMUONTRA")]
    public class MuontraController : Controller
    {
        QuanLyThuVienEntities db = new QuanLyThuVienEntities();
        // GET: Borrowbooks
        public ActionResult ChuaDuyetSach()
        {
            var notApprovedBook = db.MUONTRAs.Where(m => m.TRANGTHAIMUON == false && m.DAXOA == false).OrderByDescending(m => m.NGAYMUON).ToList();
            return View(notApprovedBook);
        }
        [HttpGet]
        public ActionResult DuyetPhieuMuon(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.BadRequest);
            }
            MUONTRA muonTra = db.MUONTRAs.SingleOrDefault(m => m.MAMUON == id);
            if (muonTra == null)
            {
                return HttpNotFound();
            }

            THUTHU loggedInLibrarian = (THUTHU)Session["TaiKhoan"];
            if (loggedInLibrarian != null)
            {
                muonTra.MATHUTHU = loggedInLibrarian.MATHUTHU;
            }
            else
            {
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.Unauthorized);
            }

            // Hiển thị chi tiết phiếu lên view
            var listChiTietMuonSach = db.CHITIETMUONTRAs.Where(m => m.MAMUON == id);
            ViewBag.ChiTietMuonSach = listChiTietMuonSach;

            return View(muonTra);
        }
        [HttpPost]
        public ActionResult DuyetPhieuMuon(MUONTRA model)
        {
            // Truy vấn dữ liệu đơn hàng đó
            MUONTRA updatePhieuMuon = db.MUONTRAs.SingleOrDefault(m => m.MAMUON == model.MAMUON);
            updatePhieuMuon.TRANGTHAIMUON = model.TRANGTHAIMUON;
            updatePhieuMuon.HANTRA = model.HANTRA;
            updatePhieuMuon.MATHUTHU = model.MATHUTHU;

            if (updatePhieuMuon.HANTRA == null)
            {
                string script = "alert('Xin lỗi, ngày trả không được để trống.');";
                return JavaScript(script);
            }
            var listChiTietMuonSach = db.CHITIETMUONTRAs.Where(m => m.MAMUON == model.MAMUON);
            ViewBag.ChiTietMuonSach = listChiTietMuonSach;
            // Duyệt qua từng chi tiết mượn sách để cập nhật số lượng tồn của sách
            foreach (var item in listChiTietMuonSach)
            {
                var book = db.SACHes.SingleOrDefault(s => s.MASACH == item.MASACH);
                if (book != null)
                {
                    // Trừ số lượng tồn của sách đi số lượng mượn
                    book.SOLUONGTON -= item.SOLUONGMUON;
                }
            }
            db.SaveChanges();
            return RedirectToAction("ChuaDuyetSach");
        }
        [HttpGet]
        public ActionResult HuyPhieuMuon(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.BadRequest);
            }
            MUONTRA muonTra = db.MUONTRAs.SingleOrDefault(m => m.MAMUON == id);
            if (muonTra == null)
            {
                return HttpNotFound();
            }

            // Hiển thị chi tiết phiếu lên view
            var listChiTietMuonSach = db.CHITIETMUONTRAs.Where(m => m.MAMUON == id);
            ViewBag.ChiTietMuonSach = listChiTietMuonSach;

            return View(muonTra);
        }
        [HttpPost]
        public ActionResult HuyPhieuMuon(MUONTRA model)
        {
            // Truy vấn dữ liệu đơn hàng đó
            MUONTRA updatePhieuMuon = db.MUONTRAs.SingleOrDefault(m => m.MAMUON == model.MAMUON);
            updatePhieuMuon.DAXOA = true;
            THUTHU librarian = db.THUTHUs.SingleOrDefault(m => m.MATHUTHU == model.MATHUTHU);
            updatePhieuMuon.MATHUTHU = model.MATHUTHU;
            db.SaveChanges();
            return RedirectToAction("ChuaDuyetSach");
        }
        public ActionResult DaDuyetSach()
        {
            var Acceptance = db.MUONTRAs.Where(m => m.TRANGTHAIMUON == true && m.TRANGTHAITRA == false).OrderByDescending(m => m.NGAYMUON).ToList();
            return View(Acceptance);
        }
        [HttpGet]
        public ActionResult DuyetTraSach(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.BadRequest);
            }
            MUONTRA muonTra = db.MUONTRAs.SingleOrDefault(m => m.MAMUON == id);
            if (muonTra == null)
            {
                return HttpNotFound();
            }

            // Hiển thị chi tiết phiếu lên view
            var listChiTietMuonSach = db.CHITIETMUONTRAs.Where(m => m.MAMUON == id);
            ViewBag.ChiTietMuonSach = listChiTietMuonSach;

            return View(muonTra);
        }
        [HttpPost]
        public ActionResult DuyetTraSach(MUONTRA model)
        {
            // Truy vấn dữ liệu đơn hàng đó
            MUONTRA updatePhieuMuon = db.MUONTRAs.SingleOrDefault(m => m.MAMUON == model.MAMUON);
            updatePhieuMuon.NGAYTRATHUCTE = model.NGAYTRATHUCTE;
            updatePhieuMuon.TRANGTHAITRA = model.TRANGTHAITRA;

            if (updatePhieuMuon.NGAYTRATHUCTE == null)
            {
                string script = "alert('Xin lỗi, ngày trả không được để trống.');";
                return JavaScript(script);
            }

            var listChiTietMuonSach = db.CHITIETMUONTRAs.Where(m => m.MAMUON == model.MAMUON);
            ViewBag.ChiTietMuonSach = listChiTietMuonSach;
            foreach (var item in listChiTietMuonSach)
            {
                var book = db.SACHes.SingleOrDefault(s => s.MASACH == item.MASACH);
                if (book != null)
                {
                    // Trừ số lượng tồn của sách đi số lượng mượn
                    book.SOLUONGTON += item.SOLUONGMUON;
                }
            }
            db.SaveChanges();
            return RedirectToAction("ChuaDuyetSach");
        }
        public ActionResult DaTraSach()
        {
            var Acceptance = db.MUONTRAs.Where(m => m.TRANGTHAITRA == true).OrderByDescending(m => m.NGAYMUON).ToList();
            return View(Acceptance);
        }
        public ActionResult ChiTiet(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(System.Net.HttpStatusCode.BadRequest);
            }
            MUONTRA muonTra = db.MUONTRAs.SingleOrDefault(m => m.MAMUON == id);
            if (muonTra == null)
            {
                return HttpNotFound();
            }

            // Hiển thị chi tiết phiếu lên view
            var listChiTietMuonSach = db.CHITIETMUONTRAs.Where(m => m.MAMUON == id);
            ViewBag.ChiTietMuonSach = listChiTietMuonSach;

            return View(muonTra);
        }
        [HttpGet]
        public ActionResult BorrowBooksDirectly()
        {
            var model = new BorrowBooks
            {
                BorrowInfo = new MUONTRA(),
                BorrowDetails = new List<CHITIETMUONTRA> { new CHITIETMUONTRA() } // Thêm chi tiết mượn ban đầu
            };

            return View(model);
        }

        [HttpPost]
        public ActionResult BorrowBooksDirectly(BorrowBooks model)
        {
            if (ModelState.IsValid)
            {
                THUTHU manager = Session["TaiKhoan"] as THUTHU;

                if (manager != null)
                {
                    MUONTRA borrowBooks = new MUONTRA
                    {
                        ID = model.BorrowInfo.ID,
                        MATHUTHU = manager.MATHUTHU,
                        NGAYMUON = DateTime.Now,
                        HANTRA = DateTime.Now,
                        TRANGTHAIMUON = true,
                        TRANGTHAITRA = false,
                        DAXOA = false
                    };

                    db.MUONTRAs.Add(borrowBooks);
                    db.SaveChanges();

                    foreach (var item in model.BorrowDetails)
                    {
                        CHITIETMUONTRA detailBorrowBooks = new CHITIETMUONTRA
                        {
                            MAMUON = borrowBooks.MAMUON,
                            MASACH = item.MASACH,
                            TENSACH = item.TENSACH,
                            SOLUONGMUON = item.SOLUONGMUON
                        };
                        db.CHITIETMUONTRAs.Add(detailBorrowBooks);

                        var book = db.SACHes.FirstOrDefault(s => s.MASACH == item.MASACH);
                        if (book != null)
                        {
                            book.SOLUONGMUON += item.SOLUONGMUON;
                            db.Entry(book).State = EntityState.Modified;
                        }
                    }
                    db.SaveChanges();

                    return RedirectToAction("ChuaDuyetSach"); // Chuyển hướng đến trang hoặc action thành công
                }
            }

            return View(model); // Trả lại view với thông báo validation nếu có
        }
    }
}