﻿

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
using System.Data.Entity;
using System.Data.Entity.Infrastructure;


public partial class QuanLyThuVienEntities : DbContext
{
    public QuanLyThuVienEntities()
        : base("name=QuanLyThuVienEntities")
    {

    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }


    public virtual DbSet<NHACUNGCAP> NHACUNGCAPs { get; set; }

    public virtual DbSet<SACH> SACHes { get; set; }

    public virtual DbSet<sysdiagram> sysdiagrams { get; set; }

    public virtual DbSet<NHAXUATBAN> NHAXUATBANs { get; set; }

    public virtual DbSet<THELOAI> THELOAIs { get; set; }

    public virtual DbSet<CHITIETMUONTRA> CHITIETMUONTRAs { get; set; }

    public virtual DbSet<LOP> LOPs { get; set; }

    public virtual DbSet<VIPHAM> VIPHAMs { get; set; }

    public virtual DbSet<QUYEN> QUYENs { get; set; }

    public virtual DbSet<LOAITHUTHU> LOAITHUTHUs { get; set; }

    public virtual DbSet<THUTHU> THUTHUs { get; set; }

    public virtual DbSet<THUTHUQUYEN> THUTHUQUYENs { get; set; }

    public virtual DbSet<DOCGIA> DOCGIAs { get; set; }

    public virtual DbSet<MUONTRA> MUONTRAs { get; set; }

    public virtual DbSet<CHITIETPHIEUNHAP> CHITIETPHIEUNHAPs { get; set; }

    public virtual DbSet<PHIEUNHAP> PHIEUNHAPs { get; set; }

}

}

