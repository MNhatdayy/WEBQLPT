package quanlynhatro.doanchuyennganh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import quanlynhatro.doanchuyennganh.dto.request.SoDienNuocRquestDTO;
import quanlynhatro.doanchuyennganh.entity.Phong;
import quanlynhatro.doanchuyennganh.entity.SoNuoc;
import quanlynhatro.doanchuyennganh.repository.IPhongRepository;
import quanlynhatro.doanchuyennganh.repository.ISoNuocRepository;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class SoNuocService implements IService<SoNuoc> {
    @Autowired
    private ISoNuocRepository soNuocRepository;
    @Autowired
    private IPhongRepository phongRepository;

    @Override
    public List<SoNuoc> getAll() {
        return soNuocRepository.findAll();
    }

    @Override
    public SoNuoc insert(SoNuoc soNuoc) {
        return null;
    }

    public SoNuoc insert(SoDienNuocRquestDTO soNuocDTO) {
        Optional<Phong> phong = phongRepository.findByMaPhong(soNuocDTO.getMaphong());
        SoNuoc soNuoc = SoNuoc.builder()
                .ngayNhap(new Date())
                .donGia(3500)
                .so(soNuocDTO.getSo())
                .phong(phong.get())
                .build();
        return soNuocRepository.save(soNuoc);
    }

    @Override
    public SoNuoc update(SoNuoc soNuoc) {
        return soNuocRepository.save(soNuoc);
    }
}
