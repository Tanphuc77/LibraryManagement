
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace LibraryManagement.Models
{

using System;
    using System.Collections.Generic;
    
public partial class CHITIETMUONTRA
{

    public int MACHITIETMUONTRA { get; set; }

    public Nullable<int> MAMUON { get; set; }

    public Nullable<int> MASACH { get; set; }

    public string TENSACH { get; set; }

    public Nullable<int> SOLUONGMUON { get; set; }



    public virtual SACH SACH { get; set; }

    public virtual MUONTRA MUONTRA { get; set; }

}

}
