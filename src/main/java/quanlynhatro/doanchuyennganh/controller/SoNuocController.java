package quanlynhatro.doanchuyennganh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import quanlynhatro.doanchuyennganh.dto.request.SoDienNuocRquestDTO;
import quanlynhatro.doanchuyennganh.entity.SoNuoc;
import quanlynhatro.doanchuyennganh.service.SoNuocService;

import java.util.List;

@RestController
@RequestMapping("/SoNuoc")
@CrossOrigin(origins = {"http://localhost:3000", "http://localhost:3001"})
public class SoNuocController implements IController<SoNuoc> {
    @Autowired
    private SoNuocService soNuocService;

    @Override
    @GetMapping("/")
    public List<SoNuoc> getAll() {
        return soNuocService.getAll();
    }

    @Override
    public SoNuoc insert(SoNuoc soNuoc) {
        return null;
    }

    @PostMapping("/")
    public SoNuoc insert(@RequestBody SoDienNuocRquestDTO soNuoc) {
        return soNuocService.insert(soNuoc);
    }

    @Override
    @PutMapping("/")
    public SoNuoc update(SoNuoc soNuoc) {
        return soNuocService.update(soNuoc);
    }
}
