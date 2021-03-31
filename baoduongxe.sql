-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 31, 2021 at 01:13 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `baoduongxe`
--

-- --------------------------------------------------------

--
-- Table structure for table `ChiTietBaoDuongXe`
--

CREATE TABLE `ChiTietBaoDuongXe` (
  `mactbd` int(11) NOT NULL,
  `ngaydatlich` date NOT NULL,
  `tenkh` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `bienso` varchar(14) NOT NULL,
  `manvbaoduong` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ChiTietHoaDon`
--

CREATE TABLE `ChiTietHoaDon` (
  `macthd` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `malinhkien` varchar(10) NOT NULL,
  `mahoadon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ChiTietKiemTra`
--

CREATE TABLE `ChiTietKiemTra` (
  `mactkiemtra` int(11) NOT NULL,
  `manv` varchar(10) NOT NULL,
  `makh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ChiTietThayLinhKien`
--

CREATE TABLE `ChiTietThayLinhKien` (
  `mactthaylk` int(11) NOT NULL,
  `bienso` varchar(14) NOT NULL,
  `malinhkien` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `HoaDon`
--

CREATE TABLE `HoaDon` (
  `mahoadon` int(11) NOT NULL,
  `ngaylap` date NOT NULL,
  `tongthanhtien` double NOT NULL,
  `manv` varchar(10) NOT NULL,
  `makh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `KhachHang`
--

CREATE TABLE `KhachHang` (
  `makh` int(11) NOT NULL,
  `tenkh` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LinhKien`
--

CREATE TABLE `LinhKien` (
  `malinhkien` varchar(10) NOT NULL,
  `tenlinhkien` varchar(255) NOT NULL,
  `thongtin` text NOT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `gialinhkien` double NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LinhKien`
--

INSERT INTO `LinhKien` (`malinhkien`, `tenlinhkien`, `thongtin`, `hinhanh`, `gialinhkien`, `soluong`) VALUES
('lk01', 'Baga MT09 no.01', 'Baga Yamaha MT-09 năm 2017 bản zin, màu đen, kim loại, Hạng 1', 'baga_mt09_no1.jpg', 750000, 10),
('lk02', 'Baga MT15 no.01', 'Baga Yamaha MT-15 năm 2019 bản zin, màu đen, kim loại nguyên khối, Hạng 1', 'baga_mt15_no1.jpg', 650000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `NhanVien`
--

CREATE TABLE `NhanVien` (
  `manv` varchar(10) NOT NULL,
  `tennv` varchar(100) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `NhanVien`
--

INSERT INTO `NhanVien` (`manv`, `tennv`, `diachi`, `username`, `password`) VALUES
('nv01', 'Zheng Kaiwen', 'Bình Tân', 'Lucas', '123456789'),
('nv02', 'Trần Quốc Hùng', 'R34, NHH, P8, Q4', 'Adrian', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `NhanVienBaoDuong`
--

CREATE TABLE `NhanVienBaoDuong` (
  `manvbaoduong` varchar(10) NOT NULL,
  `tennvbaoduong` varchar(100) NOT NULL,
  `manv` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `NhanVienBaoDuong`
--

INSERT INTO `NhanVienBaoDuong` (`manvbaoduong`, `tennvbaoduong`, `manv`) VALUES
('nvbd01', 'Zheng Kaiwen', 'nv01'),
('nvbd02', 'Trần Quốc Hùng', 'nv02');

-- --------------------------------------------------------

--
-- Table structure for table `SDTKhachHang`
--

CREATE TABLE `SDTKhachHang` (
  `sdt` varchar(20) NOT NULL,
  `makh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Xe`
--

CREATE TABLE `Xe` (
  `bienso` varchar(14) NOT NULL,
  `hang` varchar(100) NOT NULL,
  `makh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ChiTietBaoDuongXe`
--
ALTER TABLE `ChiTietBaoDuongXe`
  ADD PRIMARY KEY (`mactbd`),
  ADD KEY `bienso` (`bienso`),
  ADD KEY `manvbaoduong` (`manvbaoduong`);

--
-- Indexes for table `ChiTietHoaDon`
--
ALTER TABLE `ChiTietHoaDon`
  ADD PRIMARY KEY (`macthd`),
  ADD KEY `malinhkien` (`malinhkien`),
  ADD KEY `mahoadon` (`mahoadon`);

--
-- Indexes for table `ChiTietKiemTra`
--
ALTER TABLE `ChiTietKiemTra`
  ADD PRIMARY KEY (`mactkiemtra`),
  ADD KEY `manv` (`manv`),
  ADD KEY `makh` (`makh`);

--
-- Indexes for table `ChiTietThayLinhKien`
--
ALTER TABLE `ChiTietThayLinhKien`
  ADD PRIMARY KEY (`mactthaylk`),
  ADD KEY `bienso` (`bienso`),
  ADD KEY `malinhkien` (`malinhkien`);

--
-- Indexes for table `HoaDon`
--
ALTER TABLE `HoaDon`
  ADD PRIMARY KEY (`mahoadon`),
  ADD KEY `manv` (`manv`),
  ADD KEY `makh` (`makh`);

--
-- Indexes for table `KhachHang`
--
ALTER TABLE `KhachHang`
  ADD PRIMARY KEY (`makh`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `LinhKien`
--
ALTER TABLE `LinhKien`
  ADD PRIMARY KEY (`malinhkien`);

--
-- Indexes for table `NhanVien`
--
ALTER TABLE `NhanVien`
  ADD PRIMARY KEY (`manv`);

--
-- Indexes for table `NhanVienBaoDuong`
--
ALTER TABLE `NhanVienBaoDuong`
  ADD PRIMARY KEY (`manvbaoduong`),
  ADD KEY `manv` (`manv`);

--
-- Indexes for table `SDTKhachHang`
--
ALTER TABLE `SDTKhachHang`
  ADD PRIMARY KEY (`sdt`),
  ADD KEY `makh` (`makh`);

--
-- Indexes for table `Xe`
--
ALTER TABLE `Xe`
  ADD PRIMARY KEY (`bienso`),
  ADD KEY `makh` (`makh`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ChiTietBaoDuongXe`
--
ALTER TABLE `ChiTietBaoDuongXe`
  MODIFY `mactbd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ChiTietHoaDon`
--
ALTER TABLE `ChiTietHoaDon`
  MODIFY `macthd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ChiTietKiemTra`
--
ALTER TABLE `ChiTietKiemTra`
  MODIFY `mactkiemtra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ChiTietThayLinhKien`
--
ALTER TABLE `ChiTietThayLinhKien`
  MODIFY `mactthaylk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `HoaDon`
--
ALTER TABLE `HoaDon`
  MODIFY `mahoadon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `KhachHang`
--
ALTER TABLE `KhachHang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ChiTietBaoDuongXe`
--
ALTER TABLE `ChiTietBaoDuongXe`
  ADD CONSTRAINT `chitietbaoduongxe_ibfk_1` FOREIGN KEY (`bienso`) REFERENCES `Xe` (`bienso`) ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietbaoduongxe_ibfk_2` FOREIGN KEY (`manvbaoduong`) REFERENCES `NhanVienBaoDuong` (`manvbaoduong`) ON UPDATE CASCADE;

--
-- Constraints for table `ChiTietHoaDon`
--
ALTER TABLE `ChiTietHoaDon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`mahoadon`) REFERENCES `HoaDon` (`mahoadon`) ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`malinhkien`) REFERENCES `LinhKien` (`malinhkien`) ON UPDATE CASCADE;

--
-- Constraints for table `ChiTietKiemTra`
--
ALTER TABLE `ChiTietKiemTra`
  ADD CONSTRAINT `chitietkiemtra_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `KhachHang` (`makh`) ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietkiemtra_ibfk_2` FOREIGN KEY (`manv`) REFERENCES `NhanVien` (`manv`) ON UPDATE CASCADE;

--
-- Constraints for table `ChiTietThayLinhKien`
--
ALTER TABLE `ChiTietThayLinhKien`
  ADD CONSTRAINT `chitietthaylinhkien_ibfk_1` FOREIGN KEY (`bienso`) REFERENCES `Xe` (`bienso`) ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietthaylinhkien_ibfk_2` FOREIGN KEY (`malinhkien`) REFERENCES `LinhKien` (`malinhkien`) ON UPDATE CASCADE;

--
-- Constraints for table `HoaDon`
--
ALTER TABLE `HoaDon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `KhachHang` (`makh`) ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`manv`) REFERENCES `NhanVien` (`manv`) ON UPDATE CASCADE;

--
-- Constraints for table `NhanVienBaoDuong`
--
ALTER TABLE `NhanVienBaoDuong`
  ADD CONSTRAINT `nhanvienbaoduong_ibfk_1` FOREIGN KEY (`manv`) REFERENCES `NhanVien` (`manv`) ON UPDATE CASCADE;

--
-- Constraints for table `SDTKhachHang`
--
ALTER TABLE `SDTKhachHang`
  ADD CONSTRAINT `sdtkhachhang_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `KhachHang` (`makh`) ON UPDATE CASCADE;

--
-- Constraints for table `Xe`
--
ALTER TABLE `Xe`
  ADD CONSTRAINT `xe_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `KhachHang` (`makh`);

