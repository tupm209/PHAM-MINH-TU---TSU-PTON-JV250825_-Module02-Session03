CREATE SCHEMA ss3_hw04;
USE ss3_hw04;

CREATE TABLE DanhMuc(
	`maDM` INT PRIMARY KEY,
    `tenDM` VARCHAR(100) NOT NULL
);

CREATE TABLE SanPham(
	`maSP` INT PRIMARY KEY,
    `tenSP` VARCHAR(50) NOT NULL,
    `gia` DEC(10, 2) DEFAULT 0,
    `maDM` INT,
    FOREIGN KEY (maDM) REFERENCES DanhMuc(maDM)
);

INSERT INTO DanhMuc VALUES (1, "Điện Thoại");
INSERT INTO DanhMuc VALUES (2, "Máy Tính");
INSERT INTO DanhMuc VALUES (3, "Máy Ảnh");

INSERT INTO SanPham VALUES (1, "Iphone", 1000, 1);
INSERT INTO SanPham VALUES (2, "Samsung", 800, 1);
INSERT INTO SanPham VALUES (3, "Nokia", 700, 1);

SELECT 
	d.maDM,
	s.maSP,
    s.tenSP,
    s.gia
FROM SanPham s
JOIN DanhMuc d ON d.maDM = s.maDM;