﻿CREATE DATABASE LOTTERIA
ON PRIMARY
(
	NAME=LOTTERIA,
	FILENAME='D:\Lotteria\Lotteria\App_Data\LOTTERIA.mdf',
	SIZE=10MB,
	FILEGROWTH=5MB
)
GO
use master
drop database LOTTERIA
USE LOTTERIA
CREATE TABLE SANPHAM 
(
	MASP INT IDENTITY(1,1) PRIMARY KEY,
	TENSP NVARCHAR(100),
	MALOAI INT,
	DONGIA INT,
	MOTA NVARCHAR(100),
	HINHMINHHOA NVARCHAR(100),
	HINHCHITIET NVARCHAR(100)
)
GO

CREATE TABLE LOAI
(
	MALOAI INT IDENTITY(1,1) PRIMARY KEY,
	TEN NVARCHAR(100),
	HINH NVARCHAR(100)
)
GO

CREATE TABLE KHACHHANG
(
	MAKH INT IDENTITY(1,1),
	HOTENKH NVARCHAR(50),
	DIACHIKH NVARCHAR(50),
	DIENTHOAIKH VARCHAR(10),
	TENDN VARCHAR(15),
	MATKHAU VARCHAR(15),
	NGAYSINH SMALLDATETIME,
	GIOITINH BIT DEFAULT 1,
	EMAIL VARCHAR(50),
	DADUYET BIT DEFAULT 0,
	CONSTRAINT PK_KHACHHANG PRIMARY KEY(MAKH)
)
GO

CREATE TABLE DONDATHANG
(
	SODH INT IDENTITY(1,1),
	MAKH INT,
	NGAYDH SMALLDATETIME,
	TRIGIA INT CHECK (TRIGIA>0),
	DAGIAO BIT DEFAULT 0,
	NGAYGIAOHANG SMALLDATETIME,
	TENNGUOINHAN NVARCHAR(50),
	DIACHINHAN NVARCHAR(50),
	DIENTHOAINHAN VARCHAR(15),
	HTTHANHTOAN BIT DEFAULT 0,
	HTGIAOHANG BIT DEFAULT 0,
	CONSTRAINT PK_DONDATHANG PRIMARY KEY(SODH)
)
GO

CREATE TABLE CTDATHANG
(
	SODH INT,
	MASP INT,
	SOLUONG INT CHECK(SOLUONG>0),
	DONGIA INT CHECK(DONGIA>=0),
	THANHTIEN AS SOLUONG*DONGIA ,
	CONSTRAINT PK_CTDATHANG PRIMARY KEY(SODH,MASP)
)
GO

CREATE TABLE ADMIN
(
	MAADMIN INT IDENTITY(1,1),
	HOTENADMIN NVARCHAR(50),
	DIACHIADMIN NVARCHAR(50),
	DIENTHOAIADMIN VARCHAR(10),
	TENDNADMIN VARCHAR(15),
	MATKHAUADMIN VARCHAR(15),
	NGAYSINHADMIN SMALLDATETIME,
	GIOITINHADMIN BIT DEFAULT 1,
	EMAILADMIN VARCHAR(50),
	QUYENADMIN INT DEFAULT 1,
	CONSTRAINT PK_ADMIN PRIMARY KEY(MAADMIN)
)
GO

ALTER TABLE SANPHAM ADD CONSTRAINT FK_SANPHAM_LOAI FOREIGN KEY(MALOAI) REFERENCES LOAI(MALOAI)
ALTER TABLE DONDATHANG ADD CONSTRAINT FK_DONDATHANG_KHACHHANG FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)
ALTER TABLE CTDATHANG ADD CONSTRAINT FK_CTDATHANG_DONDATHANG FOREIGN KEY (SODH) REFERENCES DONDATHANG(SODH)
ALTER TABLE CTDATHANG ADD CONSTRAINT FK_CTDATHANG_SANPHAM FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)
GO

INSERT INTO ADMIN(TENDNADMIN,MATKHAUADMIN,QUYENADMIN)
VALUES ('a','a',1)
INSERT INTO ADMIN(TENDNADMIN,MATKHAUADMIN,QUYENADMIN)
VALUES ('b','b',2)
INSERT INTO ADMIN(TENDNADMIN,MATKHAUADMIN,QUYENADMIN)
VALUES ('c','c',3)




INSERT INTO LOAI(TEN,HINH)
VALUES (N'Burger','Burger.png')
INSERT INTO LOAI(TEN,HINH)
VALUES (N'Chicken','Chicken.png')
INSERT INTO LOAI(TEN,HINH)
VALUES (N'Fries','Fries.png')
INSERT INTO LOAI(TEN,HINH)
VALUES (N'Drink','Drink.png')
INSERT INTO LOAI(TEN,HINH)
VALUES (N'Cream','Cream.png')



INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'BÒ PHÔ-MAI ĐẶC BIỆT (CHEESEBURGER DELUXE)',1,45000,N'Burger bò Đặc biệt.','02_cheeseburgerdeluxe_0.png','02_cheeseburgerdeluxe_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'BURGER 2 LỚP BÒ, PHÔ-MAI (DOUBLE CHEESEBURGER)',1,55000,N'Burger 2 lớp bò và phô-mai.','05_doublecheeseburger_0.png','05_doublecheeseburger_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'BURGER GÀ (MCCHICKEN™)',1,55000,N'Burger gà, rau tươi và sốt Mayo.','04_mcchicken_0.png','04_mcchicken_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'BURGER BÒ MIẾNG LỚN PHÔ-MAI (MCROYAL™ WITH CHEESE)',1,65000,N'Burger bò miếng lớn và phô-mai','08_mcroyalwithcheese_0.png','08_mcroyalwithcheese_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'GÀ PHÔ-MAI ĐẶC BIỆT (MCCHICKEN™ DELUXE)',1,65000,N'Burger Đặc biệt gà và phô-mai.','09_mcchickendeluxe_0.png','09_mcchickendeluxe_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'BURGER 2 LỚP BÒ (BIG MAC™)',1,65000,N'Burger 2 lớp bò, phô-mai, rau tươi và sốt Big Mac.','07_bigmac_0.png','07_bigmac_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'BURGER BÒ MIẾNG LỚN ĐẶC BIỆT (MCROYAL™ DELUXE)',1,75000,N'Burger Đặc biệt bò miếng lớn với phô-mai.','12_mcroyaldeluxe_0.png','12_mcroyaldeluxe_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'BURGER PHI-LÊ GÀ ĐẶC BIỆT (MCSPICY™ DELUXE)',1,75000,N'Burger Đặc biệt phi-lê gà miếng lớn giòn cay.','11_mcspicydeluxe_0.png','11_mcspicydeluxe_1.png')



INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'20 MIẾNG GÀ MCNUGGETS™ (20 CHICKEN MCNUGGETS™)',2,110000,N'Những món ăn có thể chia sẻ cùng bạn bè','07_20pcs_chicken_mcwings_0.png','07_20pcs_chicken_mcwings_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'6 MIẾNG CÁNH GÀ (CHICKEN MCWINGS™)',2,120000,N'Những món ăn có thể chia sẻ cùng bạn bè','6_wings_0.png','6_wings_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'KHOAI TÂY CHIÊN (SIZE NHỎ)',3,15000,N'Khoai tây chiên lừng danh thế giới.','01_regular_world_famous_fries_0.png','01_regular_world_famous_fries_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'10 MIẾNG CÁNH GÀ (CHICKEN MCWINGS™)',2,170000,N'Những món ăn có thể chia sẻ cùng bạn bè','10_wings_0.png','10_wings_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'KHOAI TÂY CHIÊN (SIZE VỪA)',3,25000,N'Khoai tây chiên lừng danh thế giới.','02_medium_world_famous_fries_0.png','02_medium_world_famous_fries_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'KHOAI TÂY CHIÊN (SIZE LỚN)',3,35000,N'Khoai tây chiên lừng danh thế giới.','03_large_world_famous_fries_0.png','03_large_world_famous_fries_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'6 MIẾNG GÀ MCNUGGETS™ (6 CHICKEN MCNUGGETS™)',2,45000,N'Những món ăn có thể chia sẻ cùng bạn bè','05_6pcs_chicken_mcnuggets_0.png','05_6pcs_chicken_mcnuggets_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'9 MIẾNG GÀ MCNUGGETS™ (9 CHICKEN MCNUGGETS™)',2,60000,N'Những món ăn có thể chia sẻ cùng bạn bè','06_9pcs_chicken_mcnuggets_0.png','06_9pcs_chicken_mcnuggets_1.png')
INSERT INTO SANPHAM(TENSP,MALOAI,DONGIA,MOTA,HINHMINHHOA,HINHCHITIET)
VALUES (N'3 MIẾNG CÁNH GÀ MCWINGS™ (3 CHICKEN MCWINGS™)',2,65000,N'Những món ăn có thể chia sẻ cùng bạn bè','04_3pcs_chicken_mcwings_0.png','04_3pcs_chicken_mcwings_1.png')
