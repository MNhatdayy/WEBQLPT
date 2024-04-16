package quanlynhatro.doanchuyennganh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import quanlynhatro.doanchuyennganh.entity.HopDongThuePhong;
import quanlynhatro.doanchuyennganh.service.HopDongThuePhongService;

import java.util.List;

@RestController
@RequestMapping("/HopDongThuePhong")
@CrossOrigin(origins = {"http://localhost:3000", "http://localhost:3001"})
public class HopDongThuePhongController implements IController<HopDongThuePhong> {
    @Autowired
    private HopDongThuePhongService hopDongThuePhongService;

    @Override
    @GetMapping("/")
    public List<HopDongThuePhong> getAll() {
        return hopDongThuePhongService.getAll();
    }

    @Override
    @PostMapping("/")
    public HopDongThuePhong insert(HopDongThuePhong hopDongThuePhong) {
        return hopDongThuePhongService.insert(hopDongThuePhong);
    }

    @Override
    @PutMapping("/")
    public HopDongThuePhong update(HopDongThuePhong hopDongThuePhong) {
        return hopDongThuePhongService.update(hopDongThuePhong);
    }
}
