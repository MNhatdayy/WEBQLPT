package quanlynhatro.doanchuyennganh.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import quanlynhatro.doanchuyennganh.dto.response.HoaDonHangThangResponseDTO;
import quanlynhatro.doanchuyennganh.entity.HoaDonHangThang;
import quanlynhatro.doanchuyennganh.security.JwtTokenProvider;
import quanlynhatro.doanchuyennganh.service.HoaDonHangThangService;

import java.util.List;

@RestController
@RequestMapping("/HoaDonHangThang")
@CrossOrigin(origins = {"http://localhost:3000", "http://localhost:3001"})
public class HoaDonHangThangController implements IController<HoaDonHangThang> {
    @Autowired
    HoaDonHangThangService hoaDonHangThangService;
    @Autowired
    JwtTokenProvider jwtTokenProvider;

    @Override
    @GetMapping("/")
    public List<HoaDonHangThang> getAll() {
        return hoaDonHangThangService.getAll();
    }

    @GetMapping("/HoaDonsTheoUserName/{username}")
    public List<HoaDonHangThang> getByUserName(@PathVariable String username) {
        return hoaDonHangThangService.getByTaiKhoan(username);
    }

    @GetMapping("/getByUserNameAndStateIsFalse")
    public List<HoaDonHangThang> getByUserNameAndStateIsFalse(HttpServletRequest request) {
        String token = request.getHeader("Authorization");
        if (token == null) {
            return null;
        }
        String username = jwtTokenProvider.getUsername(request.getHeader("Authorization"));
        if (username != null)
            return hoaDonHangThangService.getByTaiKhoanAndStateIsFalse(username);
        return null;
    }

    @Override
    public HoaDonHangThang insert(HoaDonHangThang hoaDonHangThang) {
        return null;
    }

    @PostMapping("/createHoaDonsByMonthYear/{month}/{year}")
    public List<HoaDonHangThangResponseDTO> createHoaDonsByMonthYear(@PathVariable Integer month, @PathVariable Integer year) {
        return hoaDonHangThangService.createHoaDonsByMonthYear(month, year);
    }

    @Override
    public HoaDonHangThang update(HoaDonHangThang hoaDonHangThang) {
        return null;
    }

    @GetMapping("/chiTietHoaDon/{maHoaDon}")
    HoaDonHangThangResponseDTO chiTietHoaDon(@PathVariable("maHoaDon") int maHoaDon) {
        return hoaDonHangThangService.chiTietHoaDon(maHoaDon);
    }
}
