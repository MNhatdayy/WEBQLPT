package quanlynhatro.doanchuyennganh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import quanlynhatro.doanchuyennganh.entity.LoaiPhong;
import quanlynhatro.doanchuyennganh.repository.ILoaiPhongRepository;

import java.util.List;
@Service
public class LoaiPhongService implements IService<LoaiPhong> {
    @Autowired
    private ILoaiPhongRepository loaiPhongRepository;

    @Override
    public List<LoaiPhong> getAll() {

        List<LoaiPhong> loaiPhongs = loaiPhongRepository.findAll();

        return loaiPhongs;
    }

    //chỉ admin
    @Override
    public LoaiPhong insert(LoaiPhong loaiPhong) {
        return loaiPhongRepository.save(loaiPhong);
    }

    //chỉ admin
    @Override
    public LoaiPhong update(LoaiPhong loaiPhong) {
        return loaiPhongRepository.save(loaiPhong);
    }


}
