package quanlynhatro.doanchuyennganh.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import quanlynhatro.doanchuyennganh.dto.request.PhieuThueTienIchRequestDTO;
import quanlynhatro.doanchuyennganh.entity.ChiTietPhieuThueTienIch;
import quanlynhatro.doanchuyennganh.entity.PhieuThueTienIch;
import quanlynhatro.doanchuyennganh.security.JwtTokenProvider;
import quanlynhatro.doanchuyennganh.service.PhieuThueTienIchService;

import java.util.List;

@RestController
@RequestMapping("/PhieuThueTienIch")
@CrossOrigin(origins = {"http://localhost:3000", "http://localhost:3001"})
public class PhieuThueTienIchController implements IController<PhieuThueTienIch> {
    @Autowired
    private PhieuThueTienIchService phieuThueTienIchService;
    @Autowired
    JwtTokenProvider jwtTokenProvider;

    @Override
    @GetMapping("/")
    public List<PhieuThueTienIch> getAll() {
        return phieuThueTienIchService.getAll();
    }

    @Override
    public PhieuThueTienIch insert(PhieuThueTienIch phieuThueTienIch) {
        return null;
    }

    @PostMapping(value = "/")
    public List<ChiTietPhieuThueTienIch> insert(@RequestBody PhieuThueTienIchRequestDTO chiTietPhieuThueTienIchInsertDTO) {
        return phieuThueTienIchService.insert(chiTietPhieuThueTienIchInsertDTO.getUsername(), chiTietPhieuThueTienIchInsertDTO.getMaTienIches());
    }

    // JWT
    @Override
    public PhieuThueTienIch update(PhieuThueTienIch phieuThueTienIch) {
        return null;
    }

    @PutMapping("/")
    public List<ChiTietPhieuThueTienIch> update(@RequestBody PhieuThueTienIchRequestDTO phieuThueTienIchRequestDTO) {
        return phieuThueTienIchService.update(phieuThueTienIchRequestDTO.getMaPhieuThue(), phieuThueTienIchRequestDTO.getMaTienIches());
    }

    @GetMapping("/getAllTienIchDaThueByUsername")
    public List<ChiTietPhieuThueTienIch> getAllTienIchDaThueByTaiKhoan(HttpServletRequest request) {
        String token = request.getHeader("Authorization");
        if (token == null) {
            return null;
        }
        String username = jwtTokenProvider.getUsername(request.getHeader("Authorization"));
        if (username != null)
            return phieuThueTienIchService.getAllTienIchDaThueByTaiKhoan(username);
        return null;
    }
}
