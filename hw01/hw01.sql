CREATE SCHEMA QuanLyCuaHang;
USE QuanLyCuaHang;

CREATE TABLE KhachHang(
	`maKH` INT PRIMARY KEY,
    `tenKH` VARCHAR(50) NOT NULL,
    `ngaySinh` DATE,
    `diaChi` VARCHAR(100)
);

INSERT INTO KhachHang VALUES (1, "Nguyen Van A", "2000-01-01", "Ha Noi");
INSERT INTO KhachHang VALUES (2, "Tran Van B", "2001-02-02", "Da Nang");
INSERT INTO KhachHang VALUES (3, "Le Thi C", "2003-03-03", "Ho Chi Minh");

SELECT * FROM KhachHang;