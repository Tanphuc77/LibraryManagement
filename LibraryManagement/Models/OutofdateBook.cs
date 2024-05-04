using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LibraryManagement.Models
{
    public class OutofdateBook
    {
        public string HOTEN { get; set; }
        public string TENLOP { get; set; }
        public string TENSACH { get; set; }
        public int SOLUONGMUON { get; set; }
        public DateTime NGAYMUON { get; set; }
        public DateTime HANTRA { get; set; }

        // Khởi tạo không tham số
        public OutofdateBook()
        {
        }

        // Khởi tạo với các tham số
        public OutofdateBook(string hoTen, string tenLop, string tenSach, int soLuongMuon, DateTime ngayMuon, DateTime hanTra)
        {
            this.HOTEN = hoTen;
            this.TENLOP = tenLop;
            this.TENSACH = tenSach;
            this.SOLUONGMUON = soLuongMuon;
            this.NGAYMUON = ngayMuon;
            this.HANTRA = hanTra;
        }
    }

}