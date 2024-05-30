using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LibraryManagement.Models
{
    public class BorrowBooks
    {
            public MUONTRA BorrowInfo { get; set; }
            public List<CHITIETMUONTRA> BorrowDetails { get; set; }

            // Parameterless constructor
            public BorrowBooks()
            {
                BorrowDetails = new List<CHITIETMUONTRA>();
            }

            // Constructor with parameters
            public BorrowBooks(MUONTRA borrowInfo, List<CHITIETMUONTRA> borrowDetails)
            {
                BorrowInfo = borrowInfo;
                BorrowDetails = borrowDetails ?? new List<CHITIETMUONTRA>();
            }
    }
}