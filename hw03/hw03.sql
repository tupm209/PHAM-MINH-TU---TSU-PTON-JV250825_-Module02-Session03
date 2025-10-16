CREATE SCHEMA ss3_hw03;
USE ss3_hw03;

CREATE TABLE SanPham(
	`maSP` INT PRIMARY KEY,
    `tenSP` VARCHAR(100) NOT NULL,
    `gia` DEC(10, 2),
    `soLuongTon` INT DEFAULT 0
);

ALTER TABLE SanPham ADD `MoTa` TEXT;

INSERT INTO SanPham VALUES (1, "Quyển Vở", 10000, 100, "Giấy trắng sạch đẹp");
INSERT INTO SanPham VALUES (2, "Bút Bi", 5000, 200, "Bút viết mực rõ ràng, nhẹ nhàng không mỏi tay");
INSERT INTO SanPham VALUES (3,"Cặp Sách", 100000, 50, "Cặp chống gù lưng, nhẹ nhàng");

SELECT * FROM SanPham WHERE `gia` > 50000;