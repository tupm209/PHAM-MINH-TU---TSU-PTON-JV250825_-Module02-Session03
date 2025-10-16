CREATE SCHEMA ss3_hw02;
USE ss3_hw02;

CREATE TABLE Sach(
	`maSach` INT PRIMARY KEY,
    `tenSach` VARCHAR(50),
    `namXuatBan` INT
);

CREATE TABLE TacGia(
	`maTacGia` INT PRIMARY KEY,
    `tenTacGia` VARCHAR(50)
);

CREATE TABLE Sach_TacGia(
	`maSach_maTacGia` INT PRIMARY KEY,
    `maSach` INT,
    `maTacGia` INT,
    FOREIGN KEY (maSach) REFERENCES Sach(maSach),
    FOREIGN KEY (maTacGia) REFERENCES TacGia(maTacGia)
);

INSERT INTO Sach VALUES (1, "Truyen Kieu", 1820);
INSERT INTO Sach VALUES (2, "Tat Den", 1939);

INSERT INTO TacGia VALUES (1, "Nguyen Du");
INSERT INTO TacGia VALUES (2, "Ngo Tat To");

INSERT INTO Sach_TacGia VALUES (1, 1, 1);
INSERT INTO Sach_TacGia VALUES (2, 2, 2);