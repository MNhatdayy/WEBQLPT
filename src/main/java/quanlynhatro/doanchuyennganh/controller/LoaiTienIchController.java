package quanlynhatro.doanchuyennganh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import quanlynhatro.doanchuyennganh.entity.LoaiTienIch;
import quanlynhatro.doanchuyennganh.service.LoaiTienIchService;

import java.util.List;

@RestController
@RequestMapping("/LoaiTienIch")
@CrossOrigin(origins = {"http://localhost:3000", "http://localhost:3001"})
public class LoaiTienIchController implements IController<LoaiTienIch> {
    @Autowired
    private LoaiTienIchService loaiTienIchService;

    @Override
    @GetMapping("/")
    public List<LoaiTienIch> getAll() {
        return loaiTienIchService.getAll();
    }

    @Override
    @PostMapping("/")
    public LoaiTienIch insert(LoaiTienIch loaiTienIch) {
        return loaiTienIchService.insert(loaiTienIch);
    }

    @Override
    @PutMapping("/")
    public LoaiTienIch update(LoaiTienIch loaiTienIch) {
        return loaiTienIchService.update(loaiTienIch);
    }
}
