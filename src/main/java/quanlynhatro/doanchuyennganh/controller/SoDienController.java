package quanlynhatro.doanchuyennganh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import quanlynhatro.doanchuyennganh.dto.request.SoDienNuocRquestDTO;
import quanlynhatro.doanchuyennganh.entity.SoDien;
import quanlynhatro.doanchuyennganh.service.SoDienService;

import java.util.List;

@RestController
@RequestMapping("/SoDien")
@CrossOrigin(origins = {"http://localhost:3000", "http://localhost:3001"})
public class SoDienController implements IController<SoDien> {
    @Autowired
    private SoDienService soDienService;

    @Override
    @GetMapping("/")
    public List<SoDien> getAll() {
        return soDienService.getAll();
    }

    @Override
    public SoDien insert(SoDien soDien) {
        return soDienService.insert(soDien);
    }

    @PostMapping("/")
    public SoDien insert(@RequestBody SoDienNuocRquestDTO soDien) {
        return soDienService.insert(soDien);
    }

    @Override
    @PutMapping("/")
    public SoDien update(SoDien soDien) {
        return soDienService.update(soDien);
    }
}
