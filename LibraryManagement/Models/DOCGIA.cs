
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
    public partial class DOCGIA
    {

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public DOCGIA()
    {

        this.MUONTRAs = new HashSet<MUONTRA>();

        this.VIPHAMs = new HashSet<VIPHAM>();

    }


    public int ID { get; set; }

    public string MASINHVIEN { get; set; }

    public string HOTEN { get; set; }

    public string GIOITINH { get; set; }

    public string EMAIL { get; set; }

    public string DIENTHOAI { get; set; }

    public Nullable<bool> TINHTRANG { get; set; }

    public Nullable<int> MALOP { get; set; }

    public string USERNAME { get; set; }

    public string PASSWORD { get; set; }
    public string ConfirmPassword { get; set; }
    public string OldPassword { get; set; }


        public virtual LOP LOP { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<MUONTRA> MUONTRAs { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<VIPHAM> VIPHAMs { get; set; }

}

}
