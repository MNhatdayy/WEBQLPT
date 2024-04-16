package quanlynhatro.doanchuyennganh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import quanlynhatro.doanchuyennganh.entity.HopDongThuePhong;
import quanlynhatro.doanchuyennganh.repository.IHopDongThuePhongRepository;

import java.util.List;

@Service
public class HopDongThuePhongService implements IService<HopDongThuePhong> {
    @Autowired
    private IHopDongThuePhongRepository hopDongThuePhongRepository;

    @Override
    public List<HopDongThuePhong> getAll() {
        return hopDongThuePhongRepository.findAll();
    }

    @Override
    public HopDongThuePhong insert(HopDongThuePhong hopDongThuePhong) {
        return hopDongThuePhongRepository.save(hopDongThuePhong);
    }

    @Override
    public HopDongThuePhong update(HopDongThuePhong hopDongThuePhong) {
        return hopDongThuePhongRepository.save(hopDongThuePhong);
    }
}
