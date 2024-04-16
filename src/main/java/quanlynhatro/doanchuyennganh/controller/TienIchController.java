package quanlynhatro.doanchuyennganh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import quanlynhatro.doanchuyennganh.entity.TienIch;
import quanlynhatro.doanchuyennganh.service.TienIchService;

import java.util.List;

@RestController
@RequestMapping("/TienIch")
@CrossOrigin(origins = {"http://localhost:3000", "http://localhost:3001"})
public class TienIchController implements IController<TienIch> {
    @Autowired
    private TienIchService tienIchService;

    @Override
    @GetMapping("/")
    public List<TienIch> getAll() {
        return tienIchService.getAll();
    }

    @Override
    @PostMapping("/")
    public TienIch insert(TienIch tienIch) {
        return tienIchService.insert(tienIch);
    }

    @Override
    @PutMapping("/")
    public TienIch update(TienIch tienIch) {
        return tienIchService.update(tienIch);
    }
}
