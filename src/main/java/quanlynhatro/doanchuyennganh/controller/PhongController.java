package quanlynhatro.doanchuyennganh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import quanlynhatro.doanchuyennganh.entity.Phong;
import quanlynhatro.doanchuyennganh.service.PhongService;

import java.util.List;

@RestController
@RequestMapping("/Phong")
@CrossOrigin(origins = {"http://localhost:3000", "http://localhost:3001"})
public class PhongController implements IController<Phong> {
    @Autowired
    private PhongService phongService;
    //Show toàn bộ danh sách phòng
    @Override
    @GetMapping("/")
    public List<Phong> getAll() {
        return phongService.getAll();
    }
    //Thêm Phòng
    @Override
    @PostMapping("/")
    public Phong insert(Phong phong) {
        return phongService.insert(phong);
    }
    //Cập nhật phòng
    @Override
    @PutMapping("/")
    public Phong update(Phong phong) {
        return phongService.insert(phong);
    }
    //Kiểm tra phòng còn trống
    @GetMapping("/SL")
    public int getNumberOfPhongIsConTrong() {
        return phongService.getNumberOfPhongIsConTrong();
    }
}
