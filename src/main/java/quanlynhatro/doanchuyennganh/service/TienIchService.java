package quanlynhatro.doanchuyennganh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import quanlynhatro.doanchuyennganh.entity.TienIch;
import quanlynhatro.doanchuyennganh.repository.ITienIchRepository;

import java.util.List;

@Service
public class TienIchService implements IService<TienIch> {
    @Autowired
    private ITienIchRepository tienIchRepository;

    @Override
    public List<TienIch> getAll() {
        return tienIchRepository.findAll();
    }

    @Override
    public TienIch insert(TienIch tienIch) {
        return tienIchRepository.save(tienIch);
    }

    @Override
    public TienIch update(TienIch tienIch) {
        return tienIchRepository.save(tienIch);
    }

}
