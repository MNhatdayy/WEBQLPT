package quanlynhatro.doanchuyennganh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import quanlynhatro.doanchuyennganh.dto.request.TaiKhoanRequestDTO;
import quanlynhatro.doanchuyennganh.entity.TaiKhoan;
import quanlynhatro.doanchuyennganh.service.TaiKhoanService;

import java.util.List;

@RestController
@RequestMapping("/TaiKhoan")
@CrossOrigin(origins = {"http://localhost:3000", "http://localhost:3001"})
public class TaiKhoanController implements IController<TaiKhoan> {
    @Autowired
    private TaiKhoanService taiKhoanService;

    @Override
    @GetMapping("/")
    public List<TaiKhoan> getAll() {
        return taiKhoanService.getAll();
    }

    @Override
    public TaiKhoan insert(TaiKhoan taiKhoan) {
        return null;
    }

    @PostMapping("/")
    public TaiKhoan insert(@RequestBody TaiKhoanRequestDTO taiKhoanRequestDTO) {

        return taiKhoanService.insert(taiKhoanRequestDTO);
    }

    @Override
    @PutMapping("/")
    public TaiKhoan update(TaiKhoan taiKhoan) {
        return taiKhoanService.update(taiKhoan);
    }
}
