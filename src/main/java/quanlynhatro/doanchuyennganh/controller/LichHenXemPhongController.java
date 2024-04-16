package quanlynhatro.doanchuyennganh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import quanlynhatro.doanchuyennganh.entity.LichHenXemPhong;
import quanlynhatro.doanchuyennganh.service.LichHenXemPhongService;

import java.util.List;

@RestController
@RequestMapping("/LichHenXemPhong")
@CrossOrigin(origins = {"http://localhost:3000", "http://localhost:3001"})
public class LichHenXemPhongController implements IController<LichHenXemPhong> {
    @Autowired
    LichHenXemPhongService lichHenXemPhongService;

    @Override
    @GetMapping("/")
    public List<LichHenXemPhong> getAll() {
        return lichHenXemPhongService.getAll();
    }

    @Override
    @PostMapping("/")
    public LichHenXemPhong insert(LichHenXemPhong lichHenXemPhong) {
        return lichHenXemPhongService.insert(lichHenXemPhong);
    }

    @Override
    @PutMapping("/")
    public LichHenXemPhong update(LichHenXemPhong lichHenXemPhong) {
        return lichHenXemPhongService.update(lichHenXemPhong);
    }
}
