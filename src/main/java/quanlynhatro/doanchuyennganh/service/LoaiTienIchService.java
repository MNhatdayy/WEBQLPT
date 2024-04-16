package quanlynhatro.doanchuyennganh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import quanlynhatro.doanchuyennganh.entity.LoaiTienIch;
import quanlynhatro.doanchuyennganh.repository.ILoaiTienIchRepository;

import java.util.List;

@Service
public class LoaiTienIchService implements IService<LoaiTienIch> {
    @Autowired
    private ILoaiTienIchRepository loaiTienIchRepository;

    @Override
    public List<LoaiTienIch> getAll() {
        return loaiTienIchRepository.findAll();
    }

    //chỉ admin
    @Override
    public LoaiTienIch insert(LoaiTienIch loaiTienIch) {
        return loaiTienIchRepository.save(loaiTienIch);
    }

    //chỉ admin
    @Override
    public LoaiTienIch update(LoaiTienIch loaiTienIch) {
        return loaiTienIchRepository.save(loaiTienIch);
    }


}
