package quanlynhatro.doanchuyennganh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import quanlynhatro.doanchuyennganh.entity.LoaiPhong;
import quanlynhatro.doanchuyennganh.service.LoaiPhongService;

import java.util.List;

@RestController
@CrossOrigin(origins = {"http://localhost:3000", "http://localhost:3001"})
@RequestMapping("/LoaiPhong")
public class LoaiPhongController implements IController<LoaiPhong> {
    @Autowired
    private LoaiPhongService loaiPhongService;

    @Override
    @GetMapping("/")
    public List<LoaiPhong> getAll() {

        try {
            List<LoaiPhong> loaiPhongs = loaiPhongService.getAll();
            return loaiPhongs;
        } catch (Exception e) {
            System.err.println(e);
            return null;
        }

    }

    //chỉ admin
    @PostMapping("/")
    @Override
    public LoaiPhong insert(LoaiPhong loaiPhong) {
        return loaiPhongService.insert(loaiPhong);
    }

    //chỉ admin
    @PutMapping("/")
    @Override
    public LoaiPhong update(LoaiPhong loaiPhong) {
        return loaiPhongService.insert(loaiPhong);
    }


}
