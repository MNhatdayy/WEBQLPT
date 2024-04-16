package quanlynhatro.doanchuyennganh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import quanlynhatro.doanchuyennganh.dto.response.HoaDonHangThangResponseDTO;
import quanlynhatro.doanchuyennganh.entity.*;
import quanlynhatro.doanchuyennganh.repository.*;

import java.util.*;

@Service
public class HoaDonHangThangService implements IService<HoaDonHangThang> {
    @Autowired
    private IHoaDonHangThangRepository hoaDonHangThangRepository;
    @Autowired
    private ISoDienRepository soDienRepository;
    @Autowired
    private ISoNuocRepository soNuocRepository;
    @Autowired
    private IChiTietPhieuThueTienIchRepository chiTietPhieuThueTienIchRepository;
    @Autowired
    private IPhongRepository phongRepository;
    @Autowired
    private IHopDongThuePhongRepository hopDongThuePhongRepository;
    @Autowired
    private ITaiKhoanRepository taiKhoanRepository;
    @Autowired
    private IPhieuThueTienIchRepository phieuThueTienIchRepository;

    @Override
    public List<HoaDonHangThang> getAll() {
        return hoaDonHangThangRepository.findAll();
    }

    public List<HoaDonHangThang> getByTaiKhoan(String usename) {
        Optional<TaiKhoan> taiKhoan = taiKhoanRepository.findByUserName(usename);
        return hoaDonHangThangRepository.findByTaiKhoan(taiKhoan.get());
    }

    public List<HoaDonHangThang> getByTaiKhoanAndStateIsFalse(String usename) {
        Optional<TaiKhoan> taiKhoan = taiKhoanRepository.findByUserName(usename);
        return hoaDonHangThangRepository.findByTaiKhoanAndTAndTrangThaiThanhToanIsFalse(taiKhoan.get());
    }

    @Override
    public HoaDonHangThang insert(HoaDonHangThang hoaDonHangThang) {
        return null;
    }

    @Override
    public HoaDonHangThang update(HoaDonHangThang hoaDonHangThang) {
        return null;
    }

    @Transactional
    public List<HoaDonHangThangResponseDTO> createHoaDonsByMonthYear(Integer month, Integer year) {
        List<HoaDonHangThangResponseDTO> hoaDonHangThangResponseDTOS = new ArrayList<>();
        List<Phong> phongs = phongRepository.findByConTrongIsFalse();

        for (Phong phong : phongs) {
            //hop dong cua phong dang thue
            HopDongThuePhong hopDongThuePhong = hopDongThuePhongRepository.findByPhong(phong);
            //tai khoan thue hop dong
            TaiKhoan taiKhoan = hopDongThuePhong.getTaiKhoan();

            //gan so dien cua phong theo thang
            SoDien soDien = soDienRepository.findSoDienByPhongMonthYear(phong, month, year);
            //gan so nuoc cua phong theo thang
            SoNuoc soNuoc = soNuocRepository.findSoNuocByPhongMonthYear(phong, month, year);

            //ds tien ich(chitiettienich) taikhoan dang thue
            List<ChiTietPhieuThueTienIch> chiTietPhieuThueTienIches = new ArrayList<>();
            List<PhieuThueTienIch> phieuThueTienIches = phieuThueTienIchRepository.findByTaiKhoan(taiKhoan);
            for (PhieuThueTienIch phieuThueTienIch : phieuThueTienIches) {
                chiTietPhieuThueTienIches.addAll(chiTietPhieuThueTienIchRepository.findByPhieuThueTienIch(phieuThueTienIch));
            }
            double sumTienThueTienIch = 0;
            for (ChiTietPhieuThueTienIch chiTietPhieuThueTienIch : chiTietPhieuThueTienIches) {
                sumTienThueTienIch += chiTietPhieuThueTienIch.getTienIch().getGia();
            }

            //tao hoa don cua hop dong của phong
            HoaDonHangThang hoaDonHangThang = HoaDonHangThang.builder()
                    .hopDongThuePhong(hopDongThuePhong)
                    .taiKhoan(taiKhoan)
                    .ngayLap(new Date())
                    .trangThaiThanhToan(false)
                    .soTien(phong.getLoaiPhong().getGia()
                            + soDien.getSo() * soDien.getDonGia()
                            + soNuoc.getSo() * soNuoc.getDonGia()
                            + sumTienThueTienIch)
                    .build();
            HoaDonHangThangResponseDTO hoaDonHangThangResponseDTO = HoaDonHangThangResponseDTO.builder()
                    .hoaDonHangThang(hoaDonHangThang)
                    .soDien(soDien)
                    .soNuoc(soNuoc)
                    .chiTietPhieuThueTienIches(chiTietPhieuThueTienIches)
                    .build();
            hoaDonHangThangRepository.save(hoaDonHangThang);
            hoaDonHangThangResponseDTOS.add(hoaDonHangThangResponseDTO);
        }

        return hoaDonHangThangResponseDTOS;
    }

    public HoaDonHangThangResponseDTO chiTietHoaDon(int maHoaDonHangThang) {
        //hoadon
        HoaDonHangThang hoaDonHangThang = hoaDonHangThangRepository.findById(maHoaDonHangThang).get();

        HopDongThuePhong hopDongThuePhong = hoaDonHangThang.getHopDongThuePhong();
        Phong phong = hopDongThuePhong.getPhong();
        Date date = hoaDonHangThang.getNgayLap();

        // Get the Calendar instance
        Calendar cal = Calendar.getInstance();

        // Set the Calendar time to the Date object
        cal.setTime(date);

        // Get the month integer (0-based)
        int month = cal.get(Calendar.MONTH) + 1;
        int year = cal.get(Calendar.YEAR);
        TaiKhoan taiKhoan = hopDongThuePhong.getTaiKhoan();

        //gan so dien cua phong theo thang
        SoDien soDien = soDienRepository.findSoDienByPhongMonthYear(phong, month, year);
        //gan so nuoc cua phong theo thang
        SoNuoc soNuoc = soNuocRepository.findSoNuocByPhongMonthYear(phong, month, year);

        //ds tien ich(chitiettienich) taikhoan dang thue
        List<ChiTietPhieuThueTienIch> chiTietPhieuThueTienIches = new ArrayList<>();
        List<PhieuThueTienIch> phieuThueTienIches = phieuThueTienIchRepository.findByTaiKhoan(taiKhoan);
        for (PhieuThueTienIch phieuThueTienIch : phieuThueTienIches) {
            chiTietPhieuThueTienIches.addAll(chiTietPhieuThueTienIchRepository.findByPhieuThueTienIch(phieuThueTienIch));
        }

        HoaDonHangThangResponseDTO hoaDonHangThangResponseDTO = HoaDonHangThangResponseDTO.builder()
                .hoaDonHangThang(hoaDonHangThang)
                .soDien(soDien)
                .soNuoc(soNuoc)
                .chiTietPhieuThueTienIches(chiTietPhieuThueTienIches)
                .build();
        return hoaDonHangThangResponseDTO;
    }


}
