package quanlynhatro.doanchuyennganh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import quanlynhatro.doanchuyennganh.dto.request.SoDienNuocRquestDTO;
import quanlynhatro.doanchuyennganh.entity.Phong;
import quanlynhatro.doanchuyennganh.entity.SoDien;
import quanlynhatro.doanchuyennganh.repository.IPhongRepository;
import quanlynhatro.doanchuyennganh.repository.ISoDienRepository;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class SoDienService implements IService<SoDien> {
    @Autowired
    private ISoDienRepository soDienRepository;
    @Autowired
    private IPhongRepository phongRepository;

    @Override
    public List<SoDien> getAll() {
        return soDienRepository.findAll();
    }

    @Override
    public SoDien insert(SoDien soDien) {
        return soDienRepository.save(soDien);
    }

    public SoDien insert(SoDienNuocRquestDTO soDienDTO) {
        Optional<Phong> phong = phongRepository.findByMaPhong(soDienDTO.getMaphong());
        SoDien soDien = SoDien.builder()
                .ngayNhap(new Date())
                .donGia(3500)
                .so(soDienDTO.getSo())
                .phong(phong.get())
                .build();
        return soDienRepository.save(soDien);
    }

    @Override
    public SoDien update(SoDien soDien) {
        return soDienRepository.save(soDien);
    }
}
