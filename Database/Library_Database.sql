USE [QuanLyThuVien]
GO
/****** Object:  Table [dbo].[CHITIETMUONTRA]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETMUONTRA](
	[MACHITIETMUONTRA] [int] IDENTITY(1,1) NOT NULL,
	[MAMUON] [int] NULL,
	[MASACH] [int] NULL,
	[TENSACH] [nvarchar](500) NULL,
	[SOLUONGMUON] [int] NULL,
 CONSTRAINT [PK_CHITIETMUONTRA] PRIMARY KEY CLUSTERED 
(
	[MACHITIETMUONTRA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCGIA]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCGIA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MASINHVIEN] [nvarchar](50) NULL,
	[HOTEN] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](10) NULL,
	[EMAIL] [varchar](50) NULL,
	[DIENTHOAI] [varchar](10) NULL,
	[TINHTRANG] [bit] NULL,
	[MALOP] [int] NULL,
	[USERNAME] [varchar](100) NULL,
	[PASSWORD] [varchar](100) NULL,
 CONSTRAINT [PK_DOCGIA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITHUTHU]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITHUTHU](
	[MALOAI] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAI] [nvarchar](1000) NULL,
 CONSTRAINT [PK_LOAITHUTHU] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [int] IDENTITY(1,1) NOT NULL,
	[TENLOP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MUONTRA]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUONTRA](
	[MAMUON] [int] IDENTITY(1,1) NOT NULL,
	[NGAYMUON] [date] NULL,
	[HANTRA] [date] NULL,
	[NGAYTRATHUCTE] [date] NULL,
	[TRANGTHAIMUON] [bit] NULL,
	[TRANGTHAITRA] [bit] NULL,
	[DAXOA] [bit] NULL,
	[GHICHU] [nvarchar](max) NULL,
	[MADOCGIA] [int] NULL,
	[MATHUTHU] [int] NULL,
 CONSTRAINT [PK_MUONTRA] PRIMARY KEY CLUSTERED 
(
	[MAMUON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MANHACUNGCAP] [int] IDENTITY(1,1) NOT NULL,
	[TENNHACUNGCAP] [nvarchar](500) NULL,
	[DIACHI] [nvarchar](500) NULL,
	[DIENTHOAI] [varchar](10) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MANHACUNGCAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[MANHAXUATBAN] [int] IDENTITY(1,1) NOT NULL,
	[TENNHAXUATBAN] [nvarchar](500) NULL,
	[DIACHI] [nvarchar](500) NULL,
	[DIENTHOAI] [nvarchar](10) NULL,
	[EMAIL] [varchar](50) NULL,
	[DAXOA] [bit] NULL,
	[LOGO] [nvarchar](max) NULL,
 CONSTRAINT [PK_NHAXUATBAN] PRIMARY KEY CLUSTERED 
(
	[MANHAXUATBAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MAPHIEUNHAP] [int] IDENTITY(1,1) NOT NULL,
	[MANHACUNGCAP] [int] NULL,
	[MASACH] [int] NULL,
	[NGAYNHAP] [datetime] NULL,
	[SOLUONGNHAP] [nchar](10) NULL,
	[DAXOA] [bit] NULL,
 CONSTRAINT [PK_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MAPHIEUNHAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYEN]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYEN](
	[MAQUYEN] [varchar](50) NOT NULL,
	[TENQUYEN] [nvarchar](500) NULL,
 CONSTRAINT [PK_QUYEN] PRIMARY KEY CLUSTERED 
(
	[MAQUYEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[MASACH] [int] IDENTITY(1,1) NOT NULL,
	[TENSACH] [nvarchar](500) NULL,
	[TACGIA] [nvarchar](50) NULL,
	[SOLUONGTON] [int] NULL,
	[MOTA] [nvarchar](max) NULL,
	[NGAYCAPNHAT] [date] NULL,
	[SOLUONGMUON] [int] NULL,
	[LUOTXEM] [int] NULL,
	[DAXOA] [bit] NULL,
	[HINHANH] [nvarchar](max) NULL,
	[MANHAXUATBAN] [int] NULL,
	[MATHELOAI] [int] NULL,
 CONSTRAINT [PK_SACH_1] PRIMARY KEY CLUSTERED 
(
	[MASACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[MATHELOAI] [int] IDENTITY(1,1) NOT NULL,
	[TENTHELOAI] [nvarchar](500) NULL,
	[DAXOA] [bit] NULL,
 CONSTRAINT [PK_THELOAI] PRIMARY KEY CLUSTERED 
(
	[MATHELOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUTHU]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUTHU](
	[MATHUTHU] [int] IDENTITY(1,1) NOT NULL,
	[TENTHUTHU] [nvarchar](50) NULL,
	[EMAIL] [varchar](50) NULL,
	[SODIENTHOAI] [varchar](10) NULL,
	[USERNAME] [varchar](20) NULL,
	[PASSWORD] [varchar](100) NULL,
	[TINHTRANG] [bit] NULL,
	[MALOAI] [int] NULL,
 CONSTRAINT [PK_THUTHU] PRIMARY KEY CLUSTERED 
(
	[MATHUTHU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUTHUQUYEN]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUTHUQUYEN](
	[MALOAI] [int] NOT NULL,
	[MAQUYEN] [varchar](50) NOT NULL,
	[GHICHU] [nvarchar](1000) NULL,
 CONSTRAINT [PK_THUTHUQUYEN] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC,
	[MAQUYEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIPHAM]    Script Date: 04/24/2024 3:09:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIPHAM](
	[MAVIPHAM] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NULL,
	[LYDOVP] [nvarchar](500) NULL,
	[HINHTHUCXULY] [nvarchar](500) NULL,
 CONSTRAINT [PK_VIPHAM] PRIMARY KEY CLUSTERED 
(
	[MAVIPHAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHITIETMUONTRA] ON 

INSERT [dbo].[CHITIETMUONTRA] ([MACHITIETMUONTRA], [MAMUON], [MASACH], [TENSACH], [SOLUONGMUON]) VALUES (2, 1, 1, N'Xây Dựng Đế Chế Kinh Doanh 1 Người', 1)
INSERT [dbo].[CHITIETMUONTRA] ([MACHITIETMUONTRA], [MAMUON], [MASACH], [TENSACH], [SOLUONGMUON]) VALUES (3, 1, 2, N'Kinh Doanh Chuỗi Cửa Hàng', 1)
INSERT [dbo].[CHITIETMUONTRA] ([MACHITIETMUONTRA], [MAMUON], [MASACH], [TENSACH], [SOLUONGMUON]) VALUES (4, 2, 1, N'Xây Dựng Đế Chế Kinh Doanh 1 Người', 2)
INSERT [dbo].[CHITIETMUONTRA] ([MACHITIETMUONTRA], [MAMUON], [MASACH], [TENSACH], [SOLUONGMUON]) VALUES (5, 3, 1, N'Xây Dựng Đế Chế Kinh Doanh 1 Người', 1)
INSERT [dbo].[CHITIETMUONTRA] ([MACHITIETMUONTRA], [MAMUON], [MASACH], [TENSACH], [SOLUONGMUON]) VALUES (7, 4, 1, N'Xây Dựng Đế Chế Kinh Doanh 1 Người', 1)
INSERT [dbo].[CHITIETMUONTRA] ([MACHITIETMUONTRA], [MAMUON], [MASACH], [TENSACH], [SOLUONGMUON]) VALUES (9, 9, 7, N'Xây dựng đế chế kinh doanh 1 người', 1)
INSERT [dbo].[CHITIETMUONTRA] ([MACHITIETMUONTRA], [MAMUON], [MASACH], [TENSACH], [SOLUONGMUON]) VALUES (10, 10, 62, N'Sách Kinh Doanh Hay - The Design Thinking Quick Start Guide', 1)
INSERT [dbo].[CHITIETMUONTRA] ([MACHITIETMUONTRA], [MAMUON], [MASACH], [TENSACH], [SOLUONGMUON]) VALUES (11, 11, 37, N'Sách - An Toàn Thông Tin Khi Sử Dụng Mạng Xã Hội', 1)
INSERT [dbo].[CHITIETMUONTRA] ([MACHITIETMUONTRA], [MAMUON], [MASACH], [TENSACH], [SOLUONGMUON]) VALUES (12, 12, 37, N'Sách - An Toàn Thông Tin Khi Sử Dụng Mạng Xã Hội', 1)
INSERT [dbo].[CHITIETMUONTRA] ([MACHITIETMUONTRA], [MAMUON], [MASACH], [TENSACH], [SOLUONGMUON]) VALUES (13, 13, 37, N'Sách - An Toàn Thông Tin Khi Sử Dụng Mạng Xã Hội', 1)
INSERT [dbo].[CHITIETMUONTRA] ([MACHITIETMUONTRA], [MAMUON], [MASACH], [TENSACH], [SOLUONGMUON]) VALUES (14, 14, 7, N'Xây dựng đế chế kinh doanh 1 người', 1)
INSERT [dbo].[CHITIETMUONTRA] ([MACHITIETMUONTRA], [MAMUON], [MASACH], [TENSACH], [SOLUONGMUON]) VALUES (15, 14, 37, N'Sách - An Toàn Thông Tin Khi Sử Dụng Mạng Xã Hội', 1)
INSERT [dbo].[CHITIETMUONTRA] ([MACHITIETMUONTRA], [MAMUON], [MASACH], [TENSACH], [SOLUONGMUON]) VALUES (16, 15, 7, N'Xây dựng đế chế kinh doanh 1 người', 1)
SET IDENTITY_INSERT [dbo].[CHITIETMUONTRA] OFF
GO
SET IDENTITY_INSERT [dbo].[DOCGIA] ON 

INSERT [dbo].[DOCGIA] ([ID], [MASINHVIEN], [HOTEN], [GIOITINH], [EMAIL], [DIENTHOAI], [TINHTRANG], [MALOP], [USERNAME], [PASSWORD]) VALUES (1, N'21DQ4802011017', N'Đọc giả 1', N'Nam', N'docgia1@email.com', N'123456789', 1, 1, N'user1', N'$2a$11$T90qQsMXHM41aIyV8ch6surbZUTBrakr9RtIo8/ivohaDBnRV2Y5a')
INSERT [dbo].[DOCGIA] ([ID], [MASINHVIEN], [HOTEN], [GIOITINH], [EMAIL], [DIENTHOAI], [TINHTRANG], [MALOP], [USERNAME], [PASSWORD]) VALUES (2, N'21DQ4802011018', N'Đọc giả 2', N'Nữ', N'docgia2@email.com', N'987654321', 1, 1, N'user2', N'$2a$10$w3GDndEyjIjVBCQ6FYePi.0M.PeAcgMUR4U0E1nhv.xsvJ9b.NdZO')
INSERT [dbo].[DOCGIA] ([ID], [MASINHVIEN], [HOTEN], [GIOITINH], [EMAIL], [DIENTHOAI], [TINHTRANG], [MALOP], [USERNAME], [PASSWORD]) VALUES (3, N'21DQ4802011019', N'Đọc giả 3', N'Nam', N'docgia3@email.com', N'456789123', 1, 1, N'user3', N'pass3')
INSERT [dbo].[DOCGIA] ([ID], [MASINHVIEN], [HOTEN], [GIOITINH], [EMAIL], [DIENTHOAI], [TINHTRANG], [MALOP], [USERNAME], [PASSWORD]) VALUES (4, N'21DQ4802011011', N'Đọc giả 4', N'Nữ', N'docgia4@email.com', N'789123456', 1, 1, N'user4', N'pass4')
INSERT [dbo].[DOCGIA] ([ID], [MASINHVIEN], [HOTEN], [GIOITINH], [EMAIL], [DIENTHOAI], [TINHTRANG], [MALOP], [USERNAME], [PASSWORD]) VALUES (5, N'21DQ4802011012', N'Đọc giả  5', N'Nam', N'docgia5@email.com', N'321654987', 1, 1, N'user5', N'pass5')
INSERT [dbo].[DOCGIA] ([ID], [MASINHVIEN], [HOTEN], [GIOITINH], [EMAIL], [DIENTHOAI], [TINHTRANG], [MALOP], [USERNAME], [PASSWORD]) VALUES (6, N'21DQ4802011013', N'Đọc giả  6', N'Nữ', N'docgia6@email.com', N'654987321', 1, 1, N'user6', N'pass6')
INSERT [dbo].[DOCGIA] ([ID], [MASINHVIEN], [HOTEN], [GIOITINH], [EMAIL], [DIENTHOAI], [TINHTRANG], [MALOP], [USERNAME], [PASSWORD]) VALUES (7, N'21DQ4802011014', N'Đọc giả  7', N'Nam', N'docgia7@email.com', N'987321654', 1, 1, N'user7', N'pass7')
INSERT [dbo].[DOCGIA] ([ID], [MASINHVIEN], [HOTEN], [GIOITINH], [EMAIL], [DIENTHOAI], [TINHTRANG], [MALOP], [USERNAME], [PASSWORD]) VALUES (8, N'21DQ4802011015', N'Đọc giả 8', N'Nữ', N'docgia8@email.com', N'159753246', 1, 1, N'user8', N'pass8')
INSERT [dbo].[DOCGIA] ([ID], [MASINHVIEN], [HOTEN], [GIOITINH], [EMAIL], [DIENTHOAI], [TINHTRANG], [MALOP], [USERNAME], [PASSWORD]) VALUES (11, N'21DQ4802011002', N'Đặng Chí Toàn', N'Nam', N'nguyenvannam@gmail.com', N'0356987452', 1, 1, N'thinh', N'$2a$11$IytA6PM5JFBleUK7ozasoebr1ZSSjJeGC9XTwyykSYpWC1plLf59S')
SET IDENTITY_INSERT [dbo].[DOCGIA] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAITHUTHU] ON 

INSERT [dbo].[LOAITHUTHU] ([MALOAI], [TENLOAI]) VALUES (1, N'Quản trị')
INSERT [dbo].[LOAITHUTHU] ([MALOAI], [TENLOAI]) VALUES (2, N'Quản lý sách')
INSERT [dbo].[LOAITHUTHU] ([MALOAI], [TENLOAI]) VALUES (3, N'Quản lý mượn trả')
INSERT [dbo].[LOAITHUTHU] ([MALOAI], [TENLOAI]) VALUES (4, N'Quản lý quyền và thành viên')
SET IDENTITY_INSERT [dbo].[LOAITHUTHU] OFF
GO
SET IDENTITY_INSERT [dbo].[LOP] ON 

INSERT [dbo].[LOP] ([MALOP], [TENLOP]) VALUES (1, N'D21CTC1')
INSERT [dbo].[LOP] ([MALOP], [TENLOP]) VALUES (2, N'D21KTC1')
INSERT [dbo].[LOP] ([MALOP], [TENLOP]) VALUES (3, N'D21KTX1')
INSERT [dbo].[LOP] ([MALOP], [TENLOP]) VALUES (4, N'D21DKX1')
INSERT [dbo].[LOP] ([MALOP], [TENLOP]) VALUES (5, N'D21DKC1')
SET IDENTITY_INSERT [dbo].[LOP] OFF
GO
SET IDENTITY_INSERT [dbo].[MUONTRA] ON 

INSERT [dbo].[MUONTRA] ([MAMUON], [NGAYMUON], [HANTRA], [NGAYTRATHUCTE], [TRANGTHAIMUON], [TRANGTHAITRA], [DAXOA], [GHICHU], [MADOCGIA], [MATHUTHU]) VALUES (1, CAST(N'2024-01-03' AS Date), CAST(N'2024-03-03' AS Date), NULL, 1, 0, 0, NULL, 1, 2)
INSERT [dbo].[MUONTRA] ([MAMUON], [NGAYMUON], [HANTRA], [NGAYTRATHUCTE], [TRANGTHAIMUON], [TRANGTHAITRA], [DAXOA], [GHICHU], [MADOCGIA], [MATHUTHU]) VALUES (2, CAST(N'2024-02-03' AS Date), CAST(N'2024-03-03' AS Date), NULL, 1, 0, 0, NULL, 2, 2)
INSERT [dbo].[MUONTRA] ([MAMUON], [NGAYMUON], [HANTRA], [NGAYTRATHUCTE], [TRANGTHAIMUON], [TRANGTHAITRA], [DAXOA], [GHICHU], [MADOCGIA], [MATHUTHU]) VALUES (3, CAST(N'2024-02-23' AS Date), CAST(N'2024-02-29' AS Date), CAST(N'2024-03-08' AS Date), 1, 1, 0, NULL, 1, 2)
INSERT [dbo].[MUONTRA] ([MAMUON], [NGAYMUON], [HANTRA], [NGAYTRATHUCTE], [TRANGTHAIMUON], [TRANGTHAITRA], [DAXOA], [GHICHU], [MADOCGIA], [MATHUTHU]) VALUES (4, CAST(N'2024-02-24' AS Date), CAST(N'2024-03-02' AS Date), CAST(N'2024-03-02' AS Date), 1, 1, 0, NULL, 2, 2)
INSERT [dbo].[MUONTRA] ([MAMUON], [NGAYMUON], [HANTRA], [NGAYTRATHUCTE], [TRANGTHAIMUON], [TRANGTHAITRA], [DAXOA], [GHICHU], [MADOCGIA], [MATHUTHU]) VALUES (9, CAST(N'2024-03-24' AS Date), NULL, NULL, 0, 0, 0, NULL, 1, NULL)
INSERT [dbo].[MUONTRA] ([MAMUON], [NGAYMUON], [HANTRA], [NGAYTRATHUCTE], [TRANGTHAIMUON], [TRANGTHAITRA], [DAXOA], [GHICHU], [MADOCGIA], [MATHUTHU]) VALUES (10, CAST(N'2024-03-24' AS Date), NULL, NULL, 0, 0, 0, NULL, 1, NULL)
INSERT [dbo].[MUONTRA] ([MAMUON], [NGAYMUON], [HANTRA], [NGAYTRATHUCTE], [TRANGTHAIMUON], [TRANGTHAITRA], [DAXOA], [GHICHU], [MADOCGIA], [MATHUTHU]) VALUES (11, CAST(N'2024-04-10' AS Date), NULL, NULL, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[MUONTRA] ([MAMUON], [NGAYMUON], [HANTRA], [NGAYTRATHUCTE], [TRANGTHAIMUON], [TRANGTHAITRA], [DAXOA], [GHICHU], [MADOCGIA], [MATHUTHU]) VALUES (12, CAST(N'2024-04-10' AS Date), NULL, NULL, 0, 0, 1, NULL, 1, NULL)
INSERT [dbo].[MUONTRA] ([MAMUON], [NGAYMUON], [HANTRA], [NGAYTRATHUCTE], [TRANGTHAIMUON], [TRANGTHAITRA], [DAXOA], [GHICHU], [MADOCGIA], [MATHUTHU]) VALUES (13, CAST(N'2024-04-20' AS Date), NULL, NULL, 0, 0, 0, NULL, 1, NULL)
INSERT [dbo].[MUONTRA] ([MAMUON], [NGAYMUON], [HANTRA], [NGAYTRATHUCTE], [TRANGTHAIMUON], [TRANGTHAITRA], [DAXOA], [GHICHU], [MADOCGIA], [MATHUTHU]) VALUES (14, CAST(N'2024-04-22' AS Date), NULL, NULL, 0, 0, 0, NULL, 1, NULL)
INSERT [dbo].[MUONTRA] ([MAMUON], [NGAYMUON], [HANTRA], [NGAYTRATHUCTE], [TRANGTHAIMUON], [TRANGTHAITRA], [DAXOA], [GHICHU], [MADOCGIA], [MATHUTHU]) VALUES (15, CAST(N'2024-04-23' AS Date), NULL, NULL, 0, 0, 0, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[MUONTRA] OFF
GO
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] ON 

INSERT [dbo].[NHAXUATBAN] ([MANHAXUATBAN], [TENNHAXUATBAN], [DIACHI], [DIENTHOAI], [EMAIL], [DAXOA], [LOGO]) VALUES (1, N'Trẻ', N'123 Đường ABC', N'0123456789', N'nxba@example.com', 0, NULL)
INSERT [dbo].[NHAXUATBAN] ([MANHAXUATBAN], [TENNHAXUATBAN], [DIACHI], [DIENTHOAI], [EMAIL], [DAXOA], [LOGO]) VALUES (2, N'Kim Ðồng', N'456 Đường XYZ', N'0987654321', N'nxbb@example.com', 0, NULL)
INSERT [dbo].[NHAXUATBAN] ([MANHAXUATBAN], [TENNHAXUATBAN], [DIACHI], [DIENTHOAI], [EMAIL], [DAXOA], [LOGO]) VALUES (3, N'Văn Hóa-Thông Tin', N'789 Đường LMN', N'0123456789', N'nxbc@example.com', 0, NULL)
INSERT [dbo].[NHAXUATBAN] ([MANHAXUATBAN], [TENNHAXUATBAN], [DIACHI], [DIENTHOAI], [EMAIL], [DAXOA], [LOGO]) VALUES (4, N'Hội Nhà Văn', N'101 Đường PQR', N'0987654321', N'nxbd@example.com', 0, NULL)
INSERT [dbo].[NHAXUATBAN] ([MANHAXUATBAN], [TENNHAXUATBAN], [DIACHI], [DIENTHOAI], [EMAIL], [DAXOA], [LOGO]) VALUES (5, N'Thanh Niên', N'202 Đường UVW', N'0123456789', N'nxbe@example.com', 0, NULL)
INSERT [dbo].[NHAXUATBAN] ([MANHAXUATBAN], [TENNHAXUATBAN], [DIACHI], [DIENTHOAI], [EMAIL], [DAXOA], [LOGO]) VALUES (6, N'Tổng hợp TP.Hồ Chí Minh', N'303 Đường EFG', N'0987654321', N'nxbf@example.com', 0, NULL)
INSERT [dbo].[NHAXUATBAN] ([MANHAXUATBAN], [TENNHAXUATBAN], [DIACHI], [DIENTHOAI], [EMAIL], [DAXOA], [LOGO]) VALUES (7, N'Đại Học Quốc Gia Hà Nội', N'404 Đường HIJ', N'0123456789', N'nxhg@example.com', 0, NULL)
INSERT [dbo].[NHAXUATBAN] ([MANHAXUATBAN], [TENNHAXUATBAN], [DIACHI], [DIENTHOAI], [EMAIL], [DAXOA], [LOGO]) VALUES (8, N'Phụ Nữ', N'505 Đường KLM', N'0987654321', N'nxhh@example.com', 0, NULL)
INSERT [dbo].[NHAXUATBAN] ([MANHAXUATBAN], [TENNHAXUATBAN], [DIACHI], [DIENTHOAI], [EMAIL], [DAXOA], [LOGO]) VALUES (10, N'Lao động', N'707 Đường QRS', N'0987654321', N'nxjj@example.com', 0, NULL)
INSERT [dbo].[NHAXUATBAN] ([MANHAXUATBAN], [TENNHAXUATBAN], [DIACHI], [DIENTHOAI], [EMAIL], [DAXOA], [LOGO]) VALUES (14, N'Giáo dục Việt Nam', N'707 Đường QRS', N'0987854236', N'nxjj@example.com', 0, NULL)
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] OFF
GO
INSERT [dbo].[QUYEN] ([MAQUYEN], [TENQUYEN]) VALUES (N'QUANLYMUONTRA', N'Quản lý mượn trả')
INSERT [dbo].[QUYEN] ([MAQUYEN], [TENQUYEN]) VALUES (N'QUANLYQUYEN', N'Quản lý quyền')
INSERT [dbo].[QUYEN] ([MAQUYEN], [TENQUYEN]) VALUES (N'QUANLYSACH', N'Quản lý sách')
INSERT [dbo].[QUYEN] ([MAQUYEN], [TENQUYEN]) VALUES (N'QUANLYTHANHVIEN', N'Quản lý thành viên')
GO
SET IDENTITY_INSERT [dbo].[SACH] ON 

INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (1, N'Khởi Nghiệp Bán Lẻ - Bí Quyết Thành Công Và Giàu Có Bằng Những Cửa Hàng Đông Khách', N'Nguyễn Tất Kiếm', 99, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-01-25' AS Date), 20, 100, 0, N'5bf87088791bcd0d58e3400636f472c4.jpg', 2, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (2, N'Kinh Doanh Chuỗi Cửa Hàng', N'Nguyễn Tất Kiếm', 100, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-01-03' AS Date), 20, 100, 0, N'6ab02f2b09616d832a01301c7bc6f6b9.jpg', 2, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (3, N'Giải Mã Chiến Lược Đông Tây', N'Nguyễn Tất Kiếm', 100, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-01-03' AS Date), 20, 100, 0, N'109d8de899202f32d4c0f52c7d9e91f7.jpg', 2, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (4, N'Sách Kinh Doanh', N'Michael Wilkisnon', 100, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-01-03' AS Date), 20, 100, 0, N'e96ee9fe9a1ad59daf858e3d16a94c3c.jpg', 2, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (5, N'Khởi Nghiệp Kinh Doanh Online', N'Nguyễn Tất Kiếm', 100, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-01-03' AS Date), 20, 100, 0, N'd2ccab75a7c7df6b2722c1971619c406.jpg', 2, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (6, N'Kinh Doanh Luật', N'Nguyễn Tất Kiếm', 100, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-01-03' AS Date), 20, 100, 0, N'24de6e7ed9352a2ca7139fc1becd158a.jpg', 2, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (7, N'Xây dựng đế chế kinh doanh 1 người', N'Nguyễn Tất Kiếm', 100, N'<p>Kế to&aacute;n v&agrave; t&agrave;i ch&iacute;nh l&agrave; nỗi đau chung của rất nhiều doanh nghiệp nhỏ. Ng&ocirc;n ngữ t&agrave;i ch&iacute;nh dường như l&agrave; điều b&iacute; ẩn nhất của thế giới. V&ocirc; số t&iacute;nh to&aacute;n v&agrave; &yacute; đồ được c&agrave;i cắm sau c&aacute;c con số, m&agrave; thậm ch&iacute; người kinh doanh nhiều năm cũng kh&ocirc;ng thể n&agrave;o b&oacute;c t&aacute;ch nổi.<br>Nếu bạn vẫn cảm thấy m&ugrave; mờ với bảng b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh của m&igrave;nh th&igrave; thật l&agrave; đ&aacute;ng tiếc. T&agrave;i ch&iacute;nh được xem như l&agrave; ng&ocirc;n ngữ của kinh doanh. Bảng kế to&aacute;n sẽ cho bạn biết được doanh nghiệp của m&igrave;nh lời hay lỗ, trả lời c&acirc;u hỏi v&igrave; sao tr&ocirc;ng bạn c&oacute; vẻ đang ăn n&ecirc;n l&agrave;m ra, nhưng k&eacute;t sắt c&ocirc;ng ty kh&ocirc;ng c&oacute; lấy một đồng.</p>', CAST(N'2024-03-19' AS Date), 22, 103, 0, N'577a6193d915a8d44d9de9238cbf615f.jpg', 1, 2)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (8, N'Kế Toán Tài Chính', N'Trần Xuân Nam', 100, N'<p>Kế to&aacute;n v&agrave; t&agrave;i ch&iacute;nh l&agrave; nỗi đau chung của rất nhiều doanh nghiệp nhỏ. Ng&ocirc;n ngữ t&agrave;i ch&iacute;nh dường như l&agrave; điều b&iacute; ẩn nhất của thế giới. V&ocirc; số t&iacute;nh to&aacute;n v&agrave; &yacute; đồ được c&agrave;i cắm sau c&aacute;c con số, m&agrave; thậm ch&iacute; người kinh doanh nhiều năm cũng kh&ocirc;ng thể n&agrave;o b&oacute;c t&aacute;ch nổi.<br>Nếu bạn vẫn cảm thấy m&ugrave; mờ với bảng b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh của m&igrave;nh th&igrave; thật l&agrave; đ&aacute;ng tiếc. T&agrave;i ch&iacute;nh được xem như l&agrave; ng&ocirc;n ngữ của kinh doanh. Bảng kế to&aacute;n sẽ cho bạn biết được doanh nghiệp của m&igrave;nh lời hay lỗ, trả lời c&acirc;u hỏi v&igrave; sao tr&ocirc;ng bạn c&oacute; vẻ đang ăn n&ecirc;n l&agrave;m ra, nhưng k&eacute;t sắt c&ocirc;ng ty kh&ocirc;ng c&oacute; lấy một đồng.</p>', CAST(N'2024-01-03' AS Date), 20, 100, 0, N'44d828e583cdd877c24b83439dacecd3.jpg', 1, 2)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (9, N'Bản Đồ Về Dòng Tiền', N'Nguyễn Văn An', 100, N'<p>Kế to&aacute;n v&agrave; t&agrave;i ch&iacute;nh l&agrave; nỗi đau chung của rất nhiều doanh nghiệp nhỏ. Ng&ocirc;n ngữ t&agrave;i ch&iacute;nh dường như l&agrave; điều b&iacute; ẩn nhất của thế giới. V&ocirc; số t&iacute;nh to&aacute;n v&agrave; &yacute; đồ được c&agrave;i cắm sau c&aacute;c con số, m&agrave; thậm ch&iacute; người kinh doanh nhiều năm cũng kh&ocirc;ng thể n&agrave;o b&oacute;c t&aacute;ch nổi.<br>Nếu bạn vẫn cảm thấy m&ugrave; mờ với bảng b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh của m&igrave;nh th&igrave; thật l&agrave; đ&aacute;ng tiếc. T&agrave;i ch&iacute;nh được xem như l&agrave; ng&ocirc;n ngữ của kinh doanh. Bảng kế to&aacute;n sẽ cho bạn biết được doanh nghiệp của m&igrave;nh lời hay lỗ, trả lời c&acirc;u hỏi v&igrave; sao tr&ocirc;ng bạn c&oacute; vẻ đang ăn n&ecirc;n l&agrave;m ra, nhưng k&eacute;t sắt c&ocirc;ng ty kh&ocirc;ng c&oacute; lấy một đồng.</p>', CAST(N'2024-01-03' AS Date), 20, 100, 0, N'9317719b0eaad9b320c281de6834c734.jpg', 1, 2)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (10, N'Kế Toán Vỉa Hè', N'Nguyễn Văn Xuân', 100, N'<p>Kế to&aacute;n v&agrave; t&agrave;i ch&iacute;nh l&agrave; nỗi đau chung của rất nhiều doanh nghiệp nhỏ. Ng&ocirc;n ngữ t&agrave;i ch&iacute;nh dường như l&agrave; điều b&iacute; ẩn nhất của thế giới. V&ocirc; số t&iacute;nh to&aacute;n v&agrave; &yacute; đồ được c&agrave;i cắm sau c&aacute;c con số, m&agrave; thậm ch&iacute; người kinh doanh nhiều năm cũng kh&ocirc;ng thể n&agrave;o b&oacute;c t&aacute;ch nổi.<br>Nếu bạn vẫn cảm thấy m&ugrave; mờ với bảng b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh của m&igrave;nh th&igrave; thật l&agrave; đ&aacute;ng tiếc. T&agrave;i ch&iacute;nh được xem như l&agrave; ng&ocirc;n ngữ của kinh doanh. Bảng kế to&aacute;n sẽ cho bạn biết được doanh nghiệp của m&igrave;nh lời hay lỗ, trả lời c&acirc;u hỏi v&igrave; sao tr&ocirc;ng bạn c&oacute; vẻ đang ăn n&ecirc;n l&agrave;m ra, nhưng k&eacute;t sắt c&ocirc;ng ty kh&ocirc;ng c&oacute; lấy một đồng.</p>', CAST(N'2024-01-03' AS Date), 20, 100, 0, N'db4f09b6ee8bc317f097ebcca1933a2d.jpg', 3, 2)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (11, N'Kế Toán Quản Trị Áp Dụng Cho Các Doanh Nghiệp Việt Nam', N'Võ Van Nhị', 100, N'<p>Kế to&aacute;n v&agrave; t&agrave;i ch&iacute;nh l&agrave; nỗi đau chung của rất nhiều doanh nghiệp nhỏ. Ng&ocirc;n ngữ t&agrave;i ch&iacute;nh dường như l&agrave; điều b&iacute; ẩn nhất của thế giới. V&ocirc; số t&iacute;nh to&aacute;n v&agrave; &yacute; đồ được c&agrave;i cắm sau c&aacute;c con số, m&agrave; thậm ch&iacute; người kinh doanh nhiều năm cũng kh&ocirc;ng thể n&agrave;o b&oacute;c t&aacute;ch nổi.<br>Nếu bạn vẫn cảm thấy m&ugrave; mờ với bảng b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh của m&igrave;nh th&igrave; thật l&agrave; đ&aacute;ng tiếc. T&agrave;i ch&iacute;nh được xem như l&agrave; ng&ocirc;n ngữ của kinh doanh. Bảng kế to&aacute;n sẽ cho bạn biết được doanh nghiệp của m&igrave;nh lời hay lỗ, trả lời c&acirc;u hỏi v&igrave; sao tr&ocirc;ng bạn c&oacute; vẻ đang ăn n&ecirc;n l&agrave;m ra, nhưng k&eacute;t sắt c&ocirc;ng ty kh&ocirc;ng c&oacute; lấy một đồng.</p>', CAST(N'2024-01-03' AS Date), 20, 100, 0, N'b1e4fa3934255da8233c3ff147da6a74.jpg', 3, 2)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (13, N'Thếu Và Kế Toán Trong Doanh Nghiệp', N'Trần Minh Dũng', 100, N'<p>Kế to&aacute;n v&agrave; t&agrave;i ch&iacute;nh l&agrave; nỗi đau chung của rất nhiều doanh nghiệp nhỏ. Ng&ocirc;n ngữ t&agrave;i ch&iacute;nh dường như l&agrave; điều b&iacute; ẩn nhất của thế giới. V&ocirc; số t&iacute;nh to&aacute;n v&agrave; &yacute; đồ được c&agrave;i cắm sau c&aacute;c con số, m&agrave; thậm ch&iacute; người kinh doanh nhiều năm cũng kh&ocirc;ng thể n&agrave;o b&oacute;c t&aacute;ch nổi.<br>Nếu bạn vẫn cảm thấy m&ugrave; mờ với bảng b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh của m&igrave;nh th&igrave; thật l&agrave; đ&aacute;ng tiếc. T&agrave;i ch&iacute;nh được xem như l&agrave; ng&ocirc;n ngữ của kinh doanh. Bảng kế to&aacute;n sẽ cho bạn biết được doanh nghiệp của m&igrave;nh lời hay lỗ, trả lời c&acirc;u hỏi v&igrave; sao tr&ocirc;ng bạn c&oacute; vẻ đang ăn n&ecirc;n l&agrave;m ra, nhưng k&eacute;t sắt c&ocirc;ng ty kh&ocirc;ng c&oacute; lấy một đồng.</p>', CAST(N'2024-01-03' AS Date), 20, 100, 0, N'a31d9565e4450789239f6cdb1a6d23c0.jpg', 3, 2)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (14, N'Nguyên Lý Kế Toán', N'Vỡ Văn Nhị', 100, N'<p>Kế to&aacute;n v&agrave; t&agrave;i ch&iacute;nh l&agrave; nỗi đau chung của rất nhiều doanh nghiệp nhỏ. Ng&ocirc;n ngữ t&agrave;i ch&iacute;nh dường như l&agrave; điều b&iacute; ẩn nhất của thế giới. V&ocirc; số t&iacute;nh to&aacute;n v&agrave; &yacute; đồ được c&agrave;i cắm sau c&aacute;c con số, m&agrave; thậm ch&iacute; người kinh doanh nhiều năm cũng kh&ocirc;ng thể n&agrave;o b&oacute;c t&aacute;ch nổi.<br>Nếu bạn vẫn cảm thấy m&ugrave; mờ với bảng b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh của m&igrave;nh th&igrave; thật l&agrave; đ&aacute;ng tiếc. T&agrave;i ch&iacute;nh được xem như l&agrave; ng&ocirc;n ngữ của kinh doanh. Bảng kế to&aacute;n sẽ cho bạn biết được doanh nghiệp của m&igrave;nh lời hay lỗ, trả lời c&acirc;u hỏi v&igrave; sao tr&ocirc;ng bạn c&oacute; vẻ đang ăn n&ecirc;n l&agrave;m ra, nhưng k&eacute;t sắt c&ocirc;ng ty kh&ocirc;ng c&oacute; lấy một đồng.</p>', CAST(N'2024-01-03' AS Date), 20, 100, 0, N'fc540667ae1179039b8969b5d29f25d8.jpg', 3, 2)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (16, N'Lý Thuyết Đồ Thị Và Ứng Dụng Cài Đặt Bời Ngôn Ngữ PYTHON', N'Nguyễn Xuân Phú', 100, N'<p>Ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng (CNTT&amp;TT) Việt Nam bước v&agrave;o năm 2018 trước cơ hội đặc biệt khi Việt Nam đang t&iacute;ch cực triển khai chuyển đổi số, tận dụng những lợi thế từ cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư (CMCN 4.0) để th&uacute;c đẩy, tạo bứt ph&aacute; tăng trưởng, hay n&oacute;i c&aacute;ch kh&aacute;c thực hiện đột ph&aacute; chiến lược lần thứ ba nhờ chuyển đổi số to&agrave;n diện v&agrave; đổi mới s&aacute;ng tạo, hướng tới kh&aacute;t vọng đưa Việt Nam trở th&agrave;nh quốc gia hung cường, thịnh vượng, thuộc nh&oacute;m c&aacute;c nước c&oacute; thu nhập trung b&igrave;nh cao v&agrave;o năm 2035 v&agrave; đến năm 2045 trở th&agrave;nh nước ph&aacute;t triển, theo định hướng x&atilde; hội chủ nghĩa.</p>', CAST(N'2024-01-03' AS Date), 20, 100, 0, N'4085418b19da747d1585c9c5a604fb20.jpg', 3, 3)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (30, N'Ngành Công nghệ thông tin, Điện tử Viễn thông - Hiểu đúng ngành Chọn đúng nghề - Nhà sách Ôn luyện', N'Nguyễn Xuân An', 100, N'<p>Ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng (CNTT&amp;TT) Việt Nam bước v&agrave;o năm 2018 trước cơ hội đặc biệt khi Việt Nam đang t&iacute;ch cực triển khai chuyển đổi số, tận dụng những lợi thế từ cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư (CMCN 4.0) để th&uacute;c đẩy, tạo bứt ph&aacute; tăng trưởng, hay n&oacute;i c&aacute;ch kh&aacute;c thực hiện đột ph&aacute; chiến lược lần thứ ba nhờ chuyển đổi số to&agrave;n diện v&agrave; đổi mới s&aacute;ng tạo, hướng tới kh&aacute;t vọng đưa Việt Nam trở th&agrave;nh quốc gia hung cường, thịnh vượng, thuộc nh&oacute;m c&aacute;c nước c&oacute; thu nhập trung b&igrave;nh cao v&agrave;o năm 2035 v&agrave; đến năm 2045 trở th&agrave;nh nước ph&aacute;t triển, theo định hướng x&atilde; hội chủ nghĩa.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'75c43d6fd90a39ea2faf28a9cfc6cbca.jpg', 4, 3)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (31, N'Sách Công Nghệ Thông Tin- Giáo Trình Kỹ Thuật Lập Trình C Căn Bản & Nâng Cao ', N'Trần Thái Sơn', 100, N'<p>Ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng (CNTT&amp;TT) Việt Nam bước v&agrave;o năm 2018 trước cơ hội đặc biệt khi Việt Nam đang t&iacute;ch cực triển khai chuyển đổi số, tận dụng những lợi thế từ cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư (CMCN 4.0) để th&uacute;c đẩy, tạo bứt ph&aacute; tăng trưởng, hay n&oacute;i c&aacute;ch kh&aacute;c thực hiện đột ph&aacute; chiến lược lần thứ ba nhờ chuyển đổi số to&agrave;n diện v&agrave; đổi mới s&aacute;ng tạo, hướng tới kh&aacute;t vọng đưa Việt Nam trở th&agrave;nh quốc gia hung cường, thịnh vượng, thuộc nh&oacute;m c&aacute;c nước c&oacute; thu nhập trung b&igrave;nh cao v&agrave;o năm 2035 v&agrave; đến năm 2045 trở th&agrave;nh nước ph&aacute;t triển, theo định hướng x&atilde; hội chủ nghĩa.</p>', CAST(N'2024-03-13' AS Date), 20, 100, 0, N'6dc31c3d26f08f6077acd25fda3c1126.jpg', 4, 3)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (32, N'Sách Trắng Công Nghệ Thông Tin Và Truyền Thông Việt Nam 2020', N'Trần Thái Sơn', 100, N'<p>Ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng (CNTT&amp;TT) Việt Nam bước v&agrave;o năm 2018 trước cơ hội đặc biệt khi Việt Nam đang t&iacute;ch cực triển khai chuyển đổi số, tận dụng những lợi thế từ cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư (CMCN 4.0) để th&uacute;c đẩy, tạo bứt ph&aacute; tăng trưởng, hay n&oacute;i c&aacute;ch kh&aacute;c thực hiện đột ph&aacute; chiến lược lần thứ ba nhờ chuyển đổi số to&agrave;n diện v&agrave; đổi mới s&aacute;ng tạo, hướng tới kh&aacute;t vọng đưa Việt Nam trở th&agrave;nh quốc gia hung cường, thịnh vượng, thuộc nh&oacute;m c&aacute;c nước c&oacute; thu nhập trung b&igrave;nh cao v&agrave;o năm 2035 v&agrave; đến năm 2045 trở th&agrave;nh nước ph&aacute;t triển, theo định hướng x&atilde; hội chủ nghĩa.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'c794bf38f9732031855c7e943e546b28.jpg', 4, 3)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (33, N'Sách Công Nghệ Thông Tin- Giáo Trình C++ Và Lập Trình Hướng Đối Tượng', N'Nguyễn Chí Sĩ', 100, N'<p>Ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng (CNTT&amp;TT) Việt Nam bước v&agrave;o năm 2018 trước cơ hội đặc biệt khi Việt Nam đang t&iacute;ch cực triển khai chuyển đổi số, tận dụng những lợi thế từ cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư (CMCN 4.0) để th&uacute;c đẩy, tạo bứt ph&aacute; tăng trưởng, hay n&oacute;i c&aacute;ch kh&aacute;c thực hiện đột ph&aacute; chiến lược lần thứ ba nhờ chuyển đổi số to&agrave;n diện v&agrave; đổi mới s&aacute;ng tạo, hướng tới kh&aacute;t vọng đưa Việt Nam trở th&agrave;nh quốc gia hung cường, thịnh vượng, thuộc nh&oacute;m c&aacute;c nước c&oacute; thu nhập trung b&igrave;nh cao v&agrave;o năm 2035 v&agrave; đến năm 2045 trở th&agrave;nh nước ph&aacute;t triển, theo định hướng x&atilde; hội chủ nghĩa.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'c20cf33915e8d1208f71f516b36beeae.jpg', 4, 3)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (34, N'Tiếng Nhật Công Nghệ Thông Tin Trong Ngành Phần Mềm', N'Nguyễn Chí Sĩ', 100, N'<p>Ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng (CNTT&amp;TT) Việt Nam bước v&agrave;o năm 2018 trước cơ hội đặc biệt khi Việt Nam đang t&iacute;ch cực triển khai chuyển đổi số, tận dụng những lợi thế từ cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư (CMCN 4.0) để th&uacute;c đẩy, tạo bứt ph&aacute; tăng trưởng, hay n&oacute;i c&aacute;ch kh&aacute;c thực hiện đột ph&aacute; chiến lược lần thứ ba nhờ chuyển đổi số to&agrave;n diện v&agrave; đổi mới s&aacute;ng tạo, hướng tới kh&aacute;t vọng đưa Việt Nam trở th&agrave;nh quốc gia hung cường, thịnh vượng, thuộc nh&oacute;m c&aacute;c nước c&oacute; thu nhập trung b&igrave;nh cao v&agrave;o năm 2035 v&agrave; đến năm 2045 trở th&agrave;nh nước ph&aacute;t triển, theo định hướng x&atilde; hội chủ nghĩa.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'284d70c1591280eab81bfc4e77e67f3d.jpg', 4, 3)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (35, N'Sách - An toàn thông tin - Bóng ma trên mạng', N'Nguyễn Anh Vũ', 100, N'<p>Ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng (CNTT&amp;TT) Việt Nam bước v&agrave;o năm 2018 trước cơ hội đặc biệt khi Việt Nam đang t&iacute;ch cực triển khai chuyển đổi số, tận dụng những lợi thế từ cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư (CMCN 4.0) để th&uacute;c đẩy, tạo bứt ph&aacute; tăng trưởng, hay n&oacute;i c&aacute;ch kh&aacute;c thực hiện đột ph&aacute; chiến lược lần thứ ba nhờ chuyển đổi số to&agrave;n diện v&agrave; đổi mới s&aacute;ng tạo, hướng tới kh&aacute;t vọng đưa Việt Nam trở th&agrave;nh quốc gia hung cường, thịnh vượng, thuộc nh&oacute;m c&aacute;c nước c&oacute; thu nhập trung b&igrave;nh cao v&agrave;o năm 2035 v&agrave; đến năm 2045 trở th&agrave;nh nước ph&aacute;t triển, theo định hướng x&atilde; hội chủ nghĩa.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'62fd6adc1a2f86efcacd89baee34a3bc.jpg', 4, 3)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (36, N'Ứng Dụng Công Nghệ Thông Tin Và Truyền Thông Trong Đổi Mới Hoạt Động Thư Viện', N'Vương Toàn', 100, N'<p>Ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng (CNTT&amp;TT) Việt Nam bước v&agrave;o năm 2018 trước cơ hội đặc biệt khi Việt Nam đang t&iacute;ch cực triển khai chuyển đổi số, tận dụng những lợi thế từ cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư (CMCN 4.0) để th&uacute;c đẩy, tạo bứt ph&aacute; tăng trưởng, hay n&oacute;i c&aacute;ch kh&aacute;c thực hiện đột ph&aacute; chiến lược lần thứ ba nhờ chuyển đổi số to&agrave;n diện v&agrave; đổi mới s&aacute;ng tạo, hướng tới kh&aacute;t vọng đưa Việt Nam trở th&agrave;nh quốc gia hung cường, thịnh vượng, thuộc nh&oacute;m c&aacute;c nước c&oacute; thu nhập trung b&igrave;nh cao v&agrave;o năm 2035 v&agrave; đến năm 2045 trở th&agrave;nh nước ph&aacute;t triển, theo định hướng x&atilde; hội chủ nghĩa.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'photo_2017-09-28_11-34-20.u5567.d20171003.t133921.580992.jpg', 4, 3)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (37, N'Sách - An Toàn Thông Tin Khi Sử Dụng Mạng Xã Hội', N'Nguyễn Anh Vũ', 100, N'<p>Ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng (CNTT&amp;TT) Việt Nam bước v&agrave;o năm 2018 trước cơ hội đặc biệt khi Việt Nam đang t&iacute;ch cực triển khai chuyển đổi số, tận dụng những lợi thế từ cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư (CMCN 4.0) để th&uacute;c đẩy, tạo bứt ph&aacute; tăng trưởng, hay n&oacute;i c&aacute;ch kh&aacute;c thực hiện đột ph&aacute; chiến lược lần thứ ba nhờ chuyển đổi số to&agrave;n diện v&agrave; đổi mới s&aacute;ng tạo, hướng tới kh&aacute;t vọng đưa Việt Nam trở th&agrave;nh quốc gia hung cường, thịnh vượng, thuộc nh&oacute;m c&aacute;c nước c&oacute; thu nhập trung b&igrave;nh cao v&agrave;o năm 2035 v&agrave; đến năm 2045 trở th&agrave;nh nước ph&aacute;t triển, theo định hướng x&atilde; hội chủ nghĩa.</p>', CAST(N'2024-03-19' AS Date), 2, 2, 0, N'4224fbbe438fcf9f15beba9b01fefc95.jpg', 4, 3)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (38, N'Lời giải bài tập Python cơ bản', N'Nguyễn Chí Sĩ', 100, N'<p>Ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng (CNTT&amp;TT) Việt Nam bước v&agrave;o năm 2018 trước cơ hội đặc biệt khi Việt Nam đang t&iacute;ch cực triển khai chuyển đổi số, tận dụng những lợi thế từ cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư (CMCN 4.0) để th&uacute;c đẩy, tạo bứt ph&aacute; tăng trưởng, hay n&oacute;i c&aacute;ch kh&aacute;c thực hiện đột ph&aacute; chiến lược lần thứ ba nhờ chuyển đổi số to&agrave;n diện v&agrave; đổi mới s&aacute;ng tạo, hướng tới kh&aacute;t vọng đưa Việt Nam trở th&agrave;nh quốc gia hung cường, thịnh vượng, thuộc nh&oacute;m c&aacute;c nước c&oacute; thu nhập trung b&igrave;nh cao v&agrave;o năm 2035 v&agrave; đến năm 2045 trở th&agrave;nh nước ph&aacute;t triển, theo định hướng x&atilde; hội chủ nghĩa.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'f2113a7e987e7a910410370e09187b3c.jpg', 4, 3)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (39, N'Nhập môn thuật toán', N'Nguyễn Chí Sĩ', 100, N'<p>Ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng (CNTT&amp;TT) Việt Nam bước v&agrave;o năm 2018 trước cơ hội đặc biệt khi Việt Nam đang t&iacute;ch cực triển khai chuyển đổi số, tận dụng những lợi thế từ cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư (CMCN 4.0) để th&uacute;c đẩy, tạo bứt ph&aacute; tăng trưởng, hay n&oacute;i c&aacute;ch kh&aacute;c thực hiện đột ph&aacute; chiến lược lần thứ ba nhờ chuyển đổi số to&agrave;n diện v&agrave; đổi mới s&aacute;ng tạo, hướng tới kh&aacute;t vọng đưa Việt Nam trở th&agrave;nh quốc gia hung cường, thịnh vượng, thuộc nh&oacute;m c&aacute;c nước c&oacute; thu nhập trung b&igrave;nh cao v&agrave;o năm 2035 v&agrave; đến năm 2045 trở th&agrave;nh nước ph&aacute;t triển, theo định hướng x&atilde; hội chủ nghĩa.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'7dafc5262657832cdd11aa46b32ba027.jpg', 4, 3)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (40, N'Python lập trình thuật toán', N'Nguyễn Văn Sơn', 100, N'<p>Ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng (CNTT&amp;TT) Việt Nam bước v&agrave;o năm 2018 trước cơ hội đặc biệt khi Việt Nam đang t&iacute;ch cực triển khai chuyển đổi số, tận dụng những lợi thế từ cuộc C&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư (CMCN 4.0) để th&uacute;c đẩy, tạo bứt ph&aacute; tăng trưởng, hay n&oacute;i c&aacute;ch kh&aacute;c thực hiện đột ph&aacute; chiến lược lần thứ ba nhờ chuyển đổi số to&agrave;n diện v&agrave; đổi mới s&aacute;ng tạo, hướng tới kh&aacute;t vọng đưa Việt Nam trở th&agrave;nh quốc gia hung cường, thịnh vượng, thuộc nh&oacute;m c&aacute;c nước c&oacute; thu nhập trung b&igrave;nh cao v&agrave;o năm 2035 v&agrave; đến năm 2045 trở th&agrave;nh nước ph&aacute;t triển, theo định hướng x&atilde; hội chủ nghĩa.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'2124f4d03407b4c8d97d19ea6dbb5a61.jpg', 4, 3)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (42, N'Sách tâm lý/kỹ năng sống tiếng Anh: The Body Keeps The Score', N'Bessel Van Der Kolk', 100, N'<p>Tiếng Anh hiện nay đ&atilde; l&agrave; một ng&ocirc;n ngữ phổ biến tại Việt Nam, được nhiều người sử dụng thường xuy&ecirc;n trong học tập, c&ocirc;ng việc hay sinh hoạt đời thường. Ngo&agrave;i vai tr&ograve; l&agrave; một ng&ocirc;n ngữ mang lại lợi thế to lớn trong cuộc sống, tiếng Anh c&ograve;n được nhiều người t&igrave;m đến để mở mang vốn kiến thức, hay đơn giản l&agrave; một th&uacute; vui, th&uacute; đọc sau một ng&agrave;y căng thẳng v&agrave; mệt mỏi.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'48d7c686976dfcc009be3a8784067f56.jpg', 5, 6)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (43, N'Combo Sách Học Tiếng Anh Little Stories 1 (5 Cuốn)', N'Stacey Riches', 100, N'<p>Tiếng Anh hiện nay đ&atilde; l&agrave; một ng&ocirc;n ngữ phổ biến tại Việt Nam, được nhiều người sử dụng thường xuy&ecirc;n trong học tập, c&ocirc;ng việc hay sinh hoạt đời thường. Ngo&agrave;i vai tr&ograve; l&agrave; một ng&ocirc;n ngữ mang lại lợi thế to lớn trong cuộc sống, tiếng Anh c&ograve;n được nhiều người t&igrave;m đến để mở mang vốn kiến thức, hay đơn giản l&agrave; một th&uacute; vui, th&uacute; đọc sau một ng&agrave;y căng thẳng v&agrave; mệt mỏi.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'e8894dc01db8f0b05476aec919b2aae9.jpg', 5, 6)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (44, N'Combo 5 Cuốn: Bộ Sách Học Tiếng Anh The Way (Song Ngữ Anh - Việt)', N'The Wanderers', 100, N'<p>Tiếng Anh hiện nay đ&atilde; l&agrave; một ng&ocirc;n ngữ phổ biến tại Việt Nam, được nhiều người sử dụng thường xuy&ecirc;n trong học tập, c&ocirc;ng việc hay sinh hoạt đời thường. Ngo&agrave;i vai tr&ograve; l&agrave; một ng&ocirc;n ngữ mang lại lợi thế to lớn trong cuộc sống, tiếng Anh c&ograve;n được nhiều người t&igrave;m đến để mở mang vốn kiến thức, hay đơn giản l&agrave; một th&uacute; vui, th&uacute; đọc sau một ng&agrave;y căng thẳng v&agrave; mệt mỏi.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'28621b428b570d2295c24efbe343f69b.jpg', 5, 6)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (45, N'Sách - Quy Luật Đánh Vần Tiếng Anh - Nguyễn Ngọc Nam', N'Nguyễn Ngọc Nam', 100, N'<p>Tiếng Anh hiện nay đ&atilde; l&agrave; một ng&ocirc;n ngữ phổ biến tại Việt Nam, được nhiều người sử dụng thường xuy&ecirc;n trong học tập, c&ocirc;ng việc hay sinh hoạt đời thường. Ngo&agrave;i vai tr&ograve; l&agrave; một ng&ocirc;n ngữ mang lại lợi thế to lớn trong cuộc sống, tiếng Anh c&ograve;n được nhiều người t&igrave;m đến để mở mang vốn kiến thức, hay đơn giản l&agrave; một th&uacute; vui, th&uacute; đọc sau một ng&agrave;y căng thẳng v&agrave; mệt mỏi.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'437a38dd16b38991dc17b98932a3be12.jpg', 5, 6)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (46, N'Sách ID Tiếng Anh cho người mới bắt đầu - người mới mất gốc Cô Trang Anh', N'Trang Anh', 100, N'<p>Tiếng Anh hiện nay đ&atilde; l&agrave; một ng&ocirc;n ngữ phổ biến tại Việt Nam, được nhiều người sử dụng thường xuy&ecirc;n trong học tập, c&ocirc;ng việc hay sinh hoạt đời thường. Ngo&agrave;i vai tr&ograve; l&agrave; một ng&ocirc;n ngữ mang lại lợi thế to lớn trong cuộc sống, tiếng Anh c&ograve;n được nhiều người t&igrave;m đến để mở mang vốn kiến thức, hay đơn giản l&agrave; một th&uacute; vui, th&uacute; đọc sau một ng&agrave;y căng thẳng v&agrave; mệt mỏi.</p>', CAST(N'2024-01-10' AS Date), 20, 100, 0, N'9da8a23035329ceae5404649eba7afa0.jpg', 5, 6)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (47, N'30 Chuyên Đề Ngữ Pháp Tiếng Anh Cô Trang Anh', N'Trang Anh', 100, N'<p>Tiếng Anh hiện nay đ&atilde; l&agrave; một ng&ocirc;n ngữ phổ biến tại Việt Nam, được nhiều người sử dụng thường xuy&ecirc;n trong học tập, c&ocirc;ng việc hay sinh hoạt đời thường. Ngo&agrave;i vai tr&ograve; l&agrave; một ng&ocirc;n ngữ mang lại lợi thế to lớn trong cuộc sống, tiếng Anh c&ograve;n được nhiều người t&igrave;m đến để mở mang vốn kiến thức, hay đơn giản l&agrave; một th&uacute; vui, th&uacute; đọc sau một ng&agrave;y căng thẳng v&agrave; mệt mỏi.</p>', CAST(N'2004-03-10' AS Date), 20, 100, 0, N'0d9a5a865e917e74b6266a671279e84e.jpg', 6, 6)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (48, N'Sách self-help - Tiếng Anh: Competitive Advantage', N'Michael E. Porter', 100, N'<p>Tiếng Anh hiện nay đ&atilde; l&agrave; một ng&ocirc;n ngữ phổ biến tại Việt Nam, được nhiều người sử dụng thường xuy&ecirc;n trong học tập, c&ocirc;ng việc hay sinh hoạt đời thường. Ngo&agrave;i vai tr&ograve; l&agrave; một ng&ocirc;n ngữ mang lại lợi thế to lớn trong cuộc sống, tiếng Anh c&ograve;n được nhiều người t&igrave;m đến để mở mang vốn kiến thức, hay đơn giản l&agrave; một th&uacute; vui, th&uacute; đọc sau một ng&agrave;y căng thẳng v&agrave; mệt mỏi.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'bd1802c0f7de0b4f10fce21a33c8f12f.jpg', 6, 6)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (49, N'Tiếng Anh Cho Người Mới Bắt Đầu và Tổng Ôn Ngữ Pháp Tiếng Anh', N'Trang Anh', 100, N'<p>Tiếng Anh hiện nay đ&atilde; l&agrave; một ng&ocirc;n ngữ phổ biến tại Việt Nam, được nhiều người sử dụng thường xuy&ecirc;n trong học tập, c&ocirc;ng việc hay sinh hoạt đời thường. Ngo&agrave;i vai tr&ograve; l&agrave; một ng&ocirc;n ngữ mang lại lợi thế to lớn trong cuộc sống, tiếng Anh c&ograve;n được nhiều người t&igrave;m đến để mở mang vốn kiến thức, hay đơn giản l&agrave; một th&uacute; vui, th&uacute; đọc sau một ng&agrave;y căng thẳng v&agrave; mệt mỏi.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'69b99745231c6742e5bbb8fc19e37ab8.jpg', 6, 6)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (50, N'Gặm tiếng anh mỗi ngày cùng Woo Bo Hyu', N'Woo Bo Hyu', 100, N'<p>Tiếng Anh hiện nay đ&atilde; l&agrave; một ng&ocirc;n ngữ phổ biến tại Việt Nam, được nhiều người sử dụng thường xuy&ecirc;n trong học tập, c&ocirc;ng việc hay sinh hoạt đời thường. Ngo&agrave;i vai tr&ograve; l&agrave; một ng&ocirc;n ngữ mang lại lợi thế to lớn trong cuộc sống, tiếng Anh c&ograve;n được nhiều người t&igrave;m đến để mở mang vốn kiến thức, hay đơn giản l&agrave; một th&uacute; vui, th&uacute; đọc sau một ng&agrave;y căng thẳng v&agrave; mệt mỏi.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'785c6cfb0f5b271db03d58458f8c2c1e.jpg', 6, 6)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (51, N'Từ Cùng Trường Nghĩa Trong Tiếng Anh', N'Trang Anh', 100, N'<p>Tiếng Anh hiện nay đ&atilde; l&agrave; một ng&ocirc;n ngữ phổ biến tại Việt Nam, được nhiều người sử dụng thường xuy&ecirc;n trong học tập, c&ocirc;ng việc hay sinh hoạt đời thường. Ngo&agrave;i vai tr&ograve; l&agrave; một ng&ocirc;n ngữ mang lại lợi thế to lớn trong cuộc sống, tiếng Anh c&ograve;n được nhiều người t&igrave;m đến để mở mang vốn kiến thức, hay đơn giản l&agrave; một th&uacute; vui, th&uacute; đọc sau một ng&agrave;y căng thẳng v&agrave; mệt mỏi.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'09491546bd14806b01445f8da4f8d5b4.jpg', 7, 6)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (52, N'Tự Học 2000 Từ Vựng Tiếng Anh Theo Chủ Đề', N'The Windy', 100, N'<p>Tiếng Anh hiện nay đ&atilde; l&agrave; một ng&ocirc;n ngữ phổ biến tại Việt Nam, được nhiều người sử dụng thường xuy&ecirc;n trong học tập, c&ocirc;ng việc hay sinh hoạt đời thường. Ngo&agrave;i vai tr&ograve; l&agrave; một ng&ocirc;n ngữ mang lại lợi thế to lớn trong cuộc sống, tiếng Anh c&ograve;n được nhiều người t&igrave;m đến để mở mang vốn kiến thức, hay đơn giản l&agrave; một th&uacute; vui, th&uacute; đọc sau một ng&agrave;y căng thẳng v&agrave; mệt mỏi.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'b0448b5bd8ca590b16cc7e1f79a01233.jpg', 7, 6)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (53, N'Tiểu thuyết tiếng Anh- On Earth We''re Briefly Gorgeous', N'The Windy', 100, N'<p>Tiếng Anh hiện nay đ&atilde; l&agrave; một ng&ocirc;n ngữ phổ biến tại Việt Nam, được nhiều người sử dụng thường xuy&ecirc;n trong học tập, c&ocirc;ng việc hay sinh hoạt đời thường. Ngo&agrave;i vai tr&ograve; l&agrave; một ng&ocirc;n ngữ mang lại lợi thế to lớn trong cuộc sống, tiếng Anh c&ograve;n được nhiều người t&igrave;m đến để mở mang vốn kiến thức, hay đơn giản l&agrave; một th&uacute; vui, th&uacute; đọc sau một ng&agrave;y căng thẳng v&agrave; mệt mỏi.</p>', CAST(N'2024-03-19' AS Date), 20, 100, 0, N'b296b77aeb42678ed0031d01b99823a4.jpg', 7, 6)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (54, N'Cuốn Sách Kinh Doanh Hữu Ích: Khởi Nghiệp Từ Khốn Khó - Bí Kíp Vượt Qua Những Tình Cảnh Ngặt Nghèo Khi Bắt Đầu Kinh Doanh', N'Nguyễn Văn Thịnh', 100, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'e4abe187b80ab71f99e826c532e43bf0.jpg', 8, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (55, N'Nghệ Thuật Kinh Doanh Của Người Do Thái + Trí Tuệ Do Thái ', N'Nguyễn Văn Thịnh', 100, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'f973628c6ae638c1c5659ff2f65a206e.jpg', 8, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (56, N'Sách Sức Mạnh Của Đạo Đức Trong Kinh Doanh', N'Nguyễn Văn Thịnh', 100, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'9824c9d9898e4bd7c38e17dbb0bbc556.jpg', 8, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (57, N'90-20-30 90 Bài Học Vỡ Lòng Về Ý Tưởng Và Câu Chữ ', N'Nguyễn Văn Thịnh', 100, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'5bca0c511e7784347055478e80796d6c.jpg', 8, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (58, N'Kinh Doanh Dựa Trên Thành Viên ', N'John Warrillow', 100, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'66f7ec7ce0b7c8e5833b9215934feb0a.jpg', 10, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (59, N'HASHTAG NO.6 CRAFT – Khởi Sự Kinh Doanh Sản Phẩm Thủ Công', N'Entrepreneur Press, J.S. McDougal', 100, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'5a171f70faa5ef40165ef281860bd026.jpg', 10, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (60, N'Cuốn Sách Bài Học Kinh Doanh Cực Hay: Khác Biệt Để Dẫn Đầu Trong Kinh Doanh', N' Jeremy Gutsche', 100, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'910a9adc302929923a31a70e1b0f587e.jpg', 14, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (61, N'Bí Quyết Đầu Tư & Kinh Doanh Chứng Khoán Của Tỷ Phú Warren Buffett Và George Soros ', N'Mark Tier', 100, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-03-10' AS Date), 20, 100, 0, N'a921ed6a1e94153e60b88ba5daa4c466.jpg', 14, 1)
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [TACGIA], [SOLUONGTON], [MOTA], [NGAYCAPNHAT], [SOLUONGMUON], [LUOTXEM], [DAXOA], [HINHANH], [MANHAXUATBAN], [MATHELOAI]) VALUES (62, N'Sách Kinh Doanh Hay - The Design Thinking Quick Start Guide', N'Mark Tier', 1, N'<p>Cuốn s&aacute;ch đưa ra những kh&aacute;i niệm cơ bản nhất về c&aacute;c th&agrave;nh phần cấu th&agrave;nh n&ecirc;n một kế hoạch kinh doanh, từ đ&oacute; chỉ ra c&aacute;ch viết một bản kế hoạch kinh doanh ho&agrave;n chỉnh dựa tr&ecirc;n c&aacute;c th&agrave;nh phần đ&oacute;. Đ&acirc;y l&agrave; những hướng dẫn căn bản nhất d&agrave;nh cho những doanh nh&acirc;n mới v&agrave;o nghề v&agrave; muốn tạo dựng chiến lược kinh doanh hiệu quả cho doanh nghiệp của m&igrave;nh.</p>', CAST(N'2024-03-18' AS Date), 20, 100, 0, N'70b6874ab05bc734f62b2e31f5d98d9b.jpg', 10, 1)
SET IDENTITY_INSERT [dbo].[SACH] OFF
GO
SET IDENTITY_INSERT [dbo].[THELOAI] ON 

INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI], [DAXOA]) VALUES (1, N'KinhDoanh', 0)
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI], [DAXOA]) VALUES (2, N'Kế Toán', 0)
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI], [DAXOA]) VALUES (3, N'Công Nghệ Thông tin ', 0)
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI], [DAXOA]) VALUES (6, N'Tiếng Anh', 0)
SET IDENTITY_INSERT [dbo].[THELOAI] OFF
GO
SET IDENTITY_INSERT [dbo].[THUTHU] ON 

INSERT [dbo].[THUTHU] ([MATHUTHU], [TENTHUTHU], [EMAIL], [SODIENTHOAI], [USERNAME], [PASSWORD], [TINHTRANG], [MALOAI]) VALUES (2, N'Phan Tấn Phúc', N'phantanphuc.d21ctc1@mude.edu.vn', N'0333945872', N'admin', N'$2a$11$IkXQ00fIYinV3erch56E0.xmLZGy5atKrniCcLTRwymClwhduWTse', 1, 1)
INSERT [dbo].[THUTHU] ([MATHUTHU], [TENTHUTHU], [EMAIL], [SODIENTHOAI], [USERNAME], [PASSWORD], [TINHTRANG], [MALOAI]) VALUES (6, N'Nguyễn Văn Thịnh', N'nguyenvanthinh@gmail.com', N'0339875624', N'thinh', N'$2a$11$NE7cGs.t3s/Swl2dnTmGWewEiYYE.w8mqY4Ln6IUTN2UD74EQrqWS', 1, 2)
INSERT [dbo].[THUTHU] ([MATHUTHU], [TENTHUTHU], [EMAIL], [SODIENTHOAI], [USERNAME], [PASSWORD], [TINHTRANG], [MALOAI]) VALUES (7, N'Nguyễn Văn Nam', N'nguyenvannam@gmail.com', N'0339876544', N'nam', N'$2a$11$6DstotS05brkWHeBVdzULeEE9FD6BFu.t.Ugim4oCV8VF0IPnFXB.', 1, 3)
INSERT [dbo].[THUTHU] ([MATHUTHU], [TENTHUTHU], [EMAIL], [SODIENTHOAI], [USERNAME], [PASSWORD], [TINHTRANG], [MALOAI]) VALUES (8, N'Nguyễn Văn Bảo', N'nguyenvanbao@gmail.com', N'0339876544', N'bao', N'$2a$11$7i6FGCuuxZLyaWPgzdDxHeukzD.Di7RptWTGgUfnfHuLyW1.aAmAW', 1, 4)
SET IDENTITY_INSERT [dbo].[THUTHU] OFF
GO
INSERT [dbo].[THUTHUQUYEN] ([MALOAI], [MAQUYEN], [GHICHU]) VALUES (1, N'QUANLYMUONTRA', NULL)
INSERT [dbo].[THUTHUQUYEN] ([MALOAI], [MAQUYEN], [GHICHU]) VALUES (1, N'QUANLYQUYEN', NULL)
INSERT [dbo].[THUTHUQUYEN] ([MALOAI], [MAQUYEN], [GHICHU]) VALUES (1, N'QUANLYSACH', NULL)
INSERT [dbo].[THUTHUQUYEN] ([MALOAI], [MAQUYEN], [GHICHU]) VALUES (1, N'QUANLYTHANHVIEN', NULL)
INSERT [dbo].[THUTHUQUYEN] ([MALOAI], [MAQUYEN], [GHICHU]) VALUES (2, N'QUANLYSACH', NULL)
INSERT [dbo].[THUTHUQUYEN] ([MALOAI], [MAQUYEN], [GHICHU]) VALUES (3, N'QUANLYMUONTRA', NULL)
INSERT [dbo].[THUTHUQUYEN] ([MALOAI], [MAQUYEN], [GHICHU]) VALUES (4, N'QUANLYQUYEN', NULL)
INSERT [dbo].[THUTHUQUYEN] ([MALOAI], [MAQUYEN], [GHICHU]) VALUES (4, N'QUANLYTHANHVIEN', NULL)
GO
ALTER TABLE [dbo].[CHITIETMUONTRA]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETMUONTRA_MUONTRA] FOREIGN KEY([MAMUON])
REFERENCES [dbo].[MUONTRA] ([MAMUON])
GO
ALTER TABLE [dbo].[CHITIETMUONTRA] CHECK CONSTRAINT [FK_CHITIETMUONTRA_MUONTRA]
GO
ALTER TABLE [dbo].[CHITIETMUONTRA]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETMUONTRA_SACH] FOREIGN KEY([MASACH])
REFERENCES [dbo].[SACH] ([MASACH])
GO
ALTER TABLE [dbo].[CHITIETMUONTRA] CHECK CONSTRAINT [FK_CHITIETMUONTRA_SACH]
GO
ALTER TABLE [dbo].[DOCGIA]  WITH CHECK ADD  CONSTRAINT [FK_DOCGIA_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[DOCGIA] CHECK CONSTRAINT [FK_DOCGIA_LOP]
GO
ALTER TABLE [dbo].[MUONTRA]  WITH CHECK ADD  CONSTRAINT [FK_MUONTRA_DOCGIA1] FOREIGN KEY([MADOCGIA])
REFERENCES [dbo].[DOCGIA] ([ID])
GO
ALTER TABLE [dbo].[MUONTRA] CHECK CONSTRAINT [FK_MUONTRA_DOCGIA1]
GO
ALTER TABLE [dbo].[MUONTRA]  WITH CHECK ADD  CONSTRAINT [FK_MUONTRA_THUTHU] FOREIGN KEY([MATHUTHU])
REFERENCES [dbo].[THUTHU] ([MATHUTHU])
GO
ALTER TABLE [dbo].[MUONTRA] CHECK CONSTRAINT [FK_MUONTRA_THUTHU]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP] FOREIGN KEY([MANHACUNGCAP])
REFERENCES [dbo].[NHACUNGCAP] ([MANHACUNGCAP])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_SACH] FOREIGN KEY([MASACH])
REFERENCES [dbo].[SACH] ([MASACH])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_SACH]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_NHAXUATBAN1] FOREIGN KEY([MANHAXUATBAN])
REFERENCES [dbo].[NHAXUATBAN] ([MANHAXUATBAN])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_NHAXUATBAN1]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_THELOAI1] FOREIGN KEY([MATHELOAI])
REFERENCES [dbo].[THELOAI] ([MATHELOAI])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_THELOAI1]
GO
ALTER TABLE [dbo].[THUTHU]  WITH CHECK ADD  CONSTRAINT [FK_THUTHU_LOAITHUTHU] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAITHUTHU] ([MALOAI])
GO
ALTER TABLE [dbo].[THUTHU] CHECK CONSTRAINT [FK_THUTHU_LOAITHUTHU]
GO
ALTER TABLE [dbo].[THUTHUQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_THUTHUQUYEN_LOAITHUTHU] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAITHUTHU] ([MALOAI])
GO
ALTER TABLE [dbo].[THUTHUQUYEN] CHECK CONSTRAINT [FK_THUTHUQUYEN_LOAITHUTHU]
GO
ALTER TABLE [dbo].[THUTHUQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_THUTHUQUYEN_QUYEN] FOREIGN KEY([MAQUYEN])
REFERENCES [dbo].[QUYEN] ([MAQUYEN])
GO
ALTER TABLE [dbo].[THUTHUQUYEN] CHECK CONSTRAINT [FK_THUTHUQUYEN_QUYEN]
GO
ALTER TABLE [dbo].[VIPHAM]  WITH CHECK ADD  CONSTRAINT [FK_VIPHAM_DOCGIA] FOREIGN KEY([ID])
REFERENCES [dbo].[DOCGIA] ([ID])
GO
ALTER TABLE [dbo].[VIPHAM] CHECK CONSTRAINT [FK_VIPHAM_DOCGIA]
GO
