CREATE DATABASE QLSINHVIEN
ON
(
	NAME=QLSINHVIEN_DATA,
	FILENAME='D:\DATA\QLSINHVIEN.mdf',
	SIZE=20MB,
	MAXSIZE=200MB,
	FILEGROWTH=10MB,
)
LOG ON
(
	NAME=QLSINHVIEN_LOG,
	FILENAME='D:\DATA\QLSINHVIEN.ldf',
	SIZE=10MB,
	FILEGROWTH=5MB
)

CREATE TABLE SinhVien
(
    MASV INT,
    HOTEN NVARCHAR(100),
    LOP NVARCHAR(20),
    DIEM FLOAT
)
INSERT INTO SinhVien
VALUES
(1, N'Nguyễn Văn A', 'DHTH01', 8.5);

INSERT INTO SinhVien
VALUES
(2, N'Trần Văn B', 'DHTH01', 7.5);

INSERT INTO SinhVien
VALUES
(3, N'Lê Văn C', 'DHTH02', 9.0);

INSERT INTO SinhVien
VALUES
(4, N'Phạm Văn D', 'DHTH02', 6.5);

INSERT INTO SinhVien
VALUES
(5, N'Hoàng Văn E', 'DHTH03', 8.0);

CREATE PROC sp_DanhSachSinhVien
AS
BEGIN
	SELECT *
	FROM SINHVIEN 
END
EXEC sp_DanhSachSinhVien

CREATE PROC SP_TIMTHEOLOP
(
	@LOP NVARCHAR(20)
)
AS
BEGIN
	SELECT *
	FROM SINHVIEN
	WHERE LOP=@LOP
END

EXEC SP_TIMTHEOLOP 'DHKTPM17A'

CREATE PROC SP_THEMSINHVIEN
(
	@MASV INT,
	@HOTEN NVARCHAR(100),
	@LOP NVARCHAR(20),
	@DIEM FLOAT
)
AS 
BEGIN
	INSERT INTO SINHVIEN
	(	
		MASV,
		HOTEN,
		LOP,
		DIEM
	)
	VALUES
	(
		@MASV,
		@HOTEN,
		@LOP,
		@DIEM
	)
END

EXEC SP_THEMSINHVIEN
1,N'NGUYỄN VĂN A','DHTH01',8.5

-------------------------------------------------------------------------------
CREATE PROC SP_CAPNHATDIEM
(
	@MASV INT,
	@DIEMMOI FLOAT
)
AS 
BEGIN
	UPDATE SINHVIEN
	SET DIEM=@DIEMMOI
	WHERE MASV=@MASV
END

EXEC SP_CAPNHATDIEM
2001240145,9.6

-------------------------------------------------------------------------------

CREATE PROC SP_DEMSINHVIEN
(
	@TONGSV INT OUTPUT
)
AS
BEGIN
	SELECT @TONGSV= COUNT (*)
	FROM SINHVIEN
	WHERE TONGSV-=@TONGSV
END

DECLARE @TONGSV INT 
EXEC SP_DEMSINHVIEN @TONGSV OUTPUT
PRINT@TONGSV

CREATE PROC sp_TimSinhVienTheoDiem
(
    @Diem FLOAT
)
AS
BEGIN
    SELECT *
    FROM SinhVien
    WHERE Diem >= @Diem
END



CREATE PROC sp_ThemSinhVienKiemTra
(
    @MaSV INT,
    @HoTen NVARCHAR(100),
    @Lop NVARCHAR(20),
    @Diem FLOAT
)
AS
BEGIN

    IF EXISTS
    (
        SELECT *
        FROM SinhVien
        WHERE MaSV = @MaSV
    )
    BEGIN
        PRINT N'Mã sinh viên đã tồn tại'
    END

    ELSE
    BEGIN
        INSERT INTO SinhVien
        (
            MaSV,
            HoTen,
            Lop,
            Diem
        )
        VALUES
        (
            @MaSV,
            @HoTen,
            @Lop,
            @Diem
        )
    END

END

CREATE PROC sp_XepLoai
(
    @Diem FLOAT
)
AS
BEGIN

    IF @Diem >= 8
    BEGIN
        PRINT N'Giỏi'
    END

    ELSE
    BEGIN
        PRINT N'Chưa giỏi'
    END

END

CREATE PROC sp_ThongTinSinhVien
(
    @MaSV INT
)
AS
BEGIN

    IF EXISTS
    (
        SELECT *
        FROM SinhVien
        WHERE MaSV = @MaSV
    )
    BEGIN

        SELECT *
        FROM SinhVien
        WHERE MaSV = @MaSV

    END

    ELSE
    BEGIN

        PRINT N'Không tìm thấy sinh viên'

    END

END