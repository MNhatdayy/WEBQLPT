package quanlynhatro.doanchuyennganh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import quanlynhatro.doanchuyennganh.entity.LichHenXemPhong;
import quanlynhatro.doanchuyennganh.repository.ILichHenXemPhongRepository;

import java.util.List;

@Service
public class LichHenXemPhongService implements IService<LichHenXemPhong> {
    @Autowired
    ILichHenXemPhongRepository lichHenXemPhongRepository;

    @Override
    public List<LichHenXemPhong> getAll() {
        return lichHenXemPhongRepository.findAll();
    }

    @Override
    public LichHenXemPhong insert(LichHenXemPhong lichHenXemPhong) {
        return lichHenXemPhongRepository.save(lichHenXemPhong);
    }

    @Override
    public LichHenXemPhong update(LichHenXemPhong lichHenXemPhong) {
        return lichHenXemPhongRepository.save(lichHenXemPhong);
    }
}
