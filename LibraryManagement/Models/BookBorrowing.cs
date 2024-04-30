using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LibraryManagement.Models
{
    public class BookBorrowing
    {
        public int MASACH { get; set; }
        public string TENSACH { get; set; }
        public DateTime NGAYMUON { get; set; }
        public int TotalQuantityBorrowed { get; set; }

        public BookBorrowing()
        {
        }

        public BookBorrowing(int maSach, string tenSach, DateTime ngayMuon, int totalQuantity)
        {
            this.MASACH = maSach;
            this.TENSACH = tenSach;
            this.NGAYMUON = ngayMuon;
            this.TotalQuantityBorrowed = totalQuantity;
        }
    }
}
