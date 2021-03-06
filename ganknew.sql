create database GenkNew
USE [GenkNew]
GO
/****** Object:  Table [dbo].[Bantin]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bantin](
	[IDBantin] [int] NOT NULL,
	[noidung] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bantin] PRIMARY KEY CLUSTERED 
(
	[IDBantin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTiet]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tieude] [nvarchar](200) NULL,
	[noidung] [nvarchar](max) NULL,
	[lanxem] [int] NULL,
	[ngaydangtin] [datetime] NULL,
	[IDbantin] [int] NOT NULL,
 CONSTRAINT [PK_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[IDname] [int] NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[ngaythangnamsinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_DangNhap] PRIMARY KEY CLUSTERED 
(
	[IDname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Bantin] ([IDBantin], [noidung]) VALUES (1, N'THỜI SỰ')
INSERT [dbo].[Bantin] ([IDBantin], [noidung]) VALUES (2, N' KINH DOANH')
INSERT [dbo].[Bantin] ([IDBantin], [noidung]) VALUES (3, N'QUÂN SỰ')
INSERT [dbo].[Bantin] ([IDBantin], [noidung]) VALUES (4, N'CÔNG NGHÊ')
INSERT [dbo].[Bantin] ([IDBantin], [noidung]) VALUES (6, N'GIẢI TRÍ')
INSERT [dbo].[DangNhap] ([IDname], [username], [password], [fullname], [ngaythangnamsinh]) VALUES (1, N'phong', N'123456',N'Nguyễn Văn Phong','12-06-2000')
ALTER TABLE [dbo].[ChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_ChiTiet_Bantin] FOREIGN KEY([IDbantin])
REFERENCES [dbo].[Bantin] ([IDBantin])
GO
ALTER TABLE [dbo].[ChiTiet] CHECK CONSTRAINT [FK_ChiTiet_Bantin]
GO
/****** Object:  StoredProcedure [dbo].[Bantin_Delete]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Bantin_Delete](
		@IDBanTin INT
)
AS
BEGIN 
	DELETE FROM dbo.Bantin  WHERE IDBantin=IDBantin
          
end
GO
/****** Object:  StoredProcedure [dbo].[Bantin_Insert]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Bantin_Insert](
		@noiDung nvarchar(50)
)
AS
BEGIN 
INSERT INTO dbo.Bantin
        ( noidung )
VALUES  (@noiDung
          )
end
GO
/****** Object:  StoredProcedure [dbo].[Bantin_SelectAll]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Bantin_SelectAll]
AS
BEGIN SELECT* FROM dbo.Bantin
end
GO
/****** Object:  StoredProcedure [dbo].[Bantin_Update]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Bantin_Update](
		@noiDung nvarchar(50),
		@IDBanTin INT
)
AS
BEGIN 
	UPDATE dbo.Bantin SET noidung=@noiDung WHERE IDBantin=IDBantin
          
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_Insert]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChiTiet_Insert](@tieude NVARCHAR(200), @noidung NVARCHAR(MAX),
@ngaydang DATETIME, @IDbantin INT)
AS
BEGIN 
	INSERT INTO dbo.ChiTiet
	        ( tieude ,
	          noidung ,
	          ngaydangtin ,
	          IDbantin
	        )
	VALUES  ( @tieude , @noidung ,
@ngaydang , @IDbantin 
	        )
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_Select]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChiTiet_Select](@ID int)
AS
BEGIN 
	SELECT* FROM dbo.ChiTiet WHERE ID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectAll]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChiTiet_SelectAll]
AS
BEGIN 
	SELECT* FROM dbo.ChiTiet 
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SelectID]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChiTiet_SelectID](@IDBanTin INT)
AS
BEGIN 
	SELECT* FROM dbo.ChiTiet WHERE IDbantin=IDbantin   
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_SLX]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChiTiet_SLX](@lanxem int, @ID INT)
AS
BEGIN 
	UPDATE dbo.ChiTiet SET lanxem=@lanxem WHERE ID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[ChiTiet_Update]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChiTiet_Update](@tieude NVARCHAR(200), @noidung NVARCHAR(MAX),
@ngaydang DATETIME, @ID INT)
AS
BEGIN 
	UPDATE dbo.ChiTiet SET tieude=@tieude,noidung=@noidung WHERE ID=@ID
end
GO
/*Object:  StoredProcedure [dbo].[ChiTiet_selectHome] */
CREATE PROC [dbo].[Chitiet_SelectHome]
AS
BEGIN
	SELECT TOP(5) * From dbo.ChiTiet
END
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_Insert]    Script Date: 4/20/2020 10:13:28 AM *****
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DangNhap_Insert](@idname INT,@userName NVARCHAR(50),@passWord NVARCHAR(50))
AS
BEGIN
	INSERT dbo.DangNhap
	        ( IDname, username, password )
	VALUES  (@idname,@username,@passWord
	          )
end
GO*/
/****** Object:  StoredProcedure [dbo].[DangNhap_Search]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DangNhap_Search](@userName NVARCHAR(50),@passWord NVARCHAR(50))
AS
BEGIN SELECT * FROM dbo.DangNhap WHERE username=@userName AND password=@passWord
end
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_SelectAll]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DangNhap_SelectAll]
AS BEGIN
SELECT* FROM dbo.DangNhap 
end
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_Update]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DangNhap_Update](@idname INT,@userName NVARCHAR(50),@passWord NVARCHAR(50))
AS
BEGIN
	UPDATE dbo.DangNhap SET IDname=@idname,username=@userName,password=@passWord
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_Acount_Login]    Script Date: 4/20/2020 10:13:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sp_Acount_Login](@username NVARCHAR(50),@password NVARCHAR(50))
AS BEGIN
	DECLARE @count INT 
	DECLARE @res BIT
    SELECT @count=COUNT(*) FROM dbo.DangNhap WHERE username=@username AND password=@password
	IF @count>0
	SET @res=1
	ELSE
	SET @res=0
	SELECT @res
end
GO
/* proc bantin_selectid*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Bantin_Selectid]( @idbantin INT)
AS BEGIN SELECT * FROM dbo.Bantin WHERE IDBantin=@idbantin
END
GO
/* chitiet_lanxem */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[chitiet_lanxem](@id INT ,@lanxem INT OUTPUT)
AS BEGIN
	SELECT @lanxem=lanxem FROM dbo.ChiTiet WHERE id=@id
END
GO
-- chitiet_selectbantin
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Chitiet_Selectbantin](@idbantin INT)
AS BEGIN SELECT* FROM dbo.ChiTiet WHERE IDbantin=@idbantin
END
GO
-- Chitiet_Selectradom
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Chitiet_Selectradom] AS
BEGIN
		SELECT TOP 5 * FROM dbo.ChiTiet TABLESAMPLE (5 ROWS)
END
GO
--DangNhap_Insert1
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DangNhap_Insert1](@fullname NVARCHAR(50),@ngaysinh NVARCHAR(50),@userName NVARCHAR(50),@passWord NVARCHAR(50))
AS
BEGIN
	INSERT INTO dbo.DangNhap
	        (fullname,ngaythangnamsinh, username, password )
	VALUES  (
				@fullname,@ngaysinh,@userName ,@passWord 
	          )
END

GO
-- Test4
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[test4] (@keysearch NVARCHAR(MAX) )
AS BEGIN SELECT* FROM dbo.ChiTiet WHERE tieude=@keysearch
END

GO
--Timkiem_tieude
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Timkiem_tieude](@tieude NVARCHAR(200))
AS BEGIN SELECT * FROM dbo.ChiTiet WHERE tieude LIKE N'%'+@tieude+'%'
END
GO