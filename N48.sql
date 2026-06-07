
CREATE DATABASE QLSV
USE QLSV

CREATE TABLE Lop
(
    MaLop CHAR(5) PRIMARY KEY,
    TenLop NVARCHAR(50) NOT NULL
)

CREATE TABLE SinhVien
(
    MaSV CHAR(5) PRIMARY KEY,
    HoTen NVARCHAR(50) NOT NULL,

    Tuoi INT DEFAULT 18,

    Diem FLOAT,

    MaLop CHAR(5),

    FOREIGN KEY(MaLop)
    REFERENCES Lop(MaLop)
)


INSERT INTO Lop
VALUES
('L01',N'Công nghệ thông tin'),
('L02',N'Kế toán')

INSERT INTO SinhVien
VALUES
('SV01',N'Nguyễn Văn A',20,8,'L01'),
('SV02',N'Trần Văn B',21,4,'L01'),
('SV03',N'Lê Thị C',19,9,'L02'),
('SV04',N'Phạm Văn D',22,3,'L02')

SELECT *FROM Lop
SELECT *FROM SinhVien


SELECT *
FROM SinhVien
WHERE Diem < 5

SELECT *
FROM SinhVien
ORDER BY Diem DESC


SELECT COUNT(*) AS SoLuongSinhVien
FROM SinhVien


SELECT MaLop,
       COUNT(*) AS SoLuong
FROM SinhVien
GROUP BY MaLop


SELECT sv.MaSV,
       sv.HoTen,
       l.TenLop
FROM SinhVien sv
INNER JOIN Lop l
ON sv.MaLop = l.MaLop

CREATE VIEW vSinhVien
AS
SELECT *
FROM SinhVien
