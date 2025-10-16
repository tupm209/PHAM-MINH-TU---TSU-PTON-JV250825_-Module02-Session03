CREATE SCHEMA tmdt;
USE tmdt;

CREATE TABLE KhachHang (
	`maKH` INT PRIMARY KEY,
    `tenKH` VARCHAR (50) NOT NULL,
    `email` VARCHAR (50) UNIQUE NOT NULL
);

CREATE TABLE DonHang (
	`maDH` INT PRIMARY KEY,
    `maKH` INT NOT NULL,
    `ngayDat` DATE NOT NULL,
    FOREIGN KEY (maKH) REFERENCES KhachHang (maKH)
);

CREATE TABLE SanPham (
	`maSP` INT PRIMARY KEY,
    `tenSP` VARCHAR (50) NOT NULL
);

CREATE TABLE ChiTietDonHang (
	`maDH_maSP` INT PRIMARY KEY,
    `maDH` INT NOT NULL,
    `maSP` INT NOT NULL,
    `soLuong` INT DEFAULT 0,
    FOREIGN KEY (maDH) REFERENCES DonHang (maDH),
	FOREIGN KEY (maSP) REFERENCES SanPham (maSP)
);

INSERT INTO KhachHang VALUES (1, "Nguyen Van A", "nva@gmail.com");
INSERT INTO KhachHang VALUES (2, "Tran Van B", "tvb@gmail.com");

INSERT INTO DonHang VALUES (1, 1, "2025-10-09");
INSERT INTO DonHang VALUES (2, 2, "2025-10-13");

INSERT INTO SanPham VALUES (1, "Dien Thoai");
INSERT INTO SanPham VALUES (2, "Laptop");

INSERT INTO ChiTietDonHang VALUES (1, 1, 2, 1);
INSERT INTO ChiTietDonHang VALUES (2, 2, 1, 4);