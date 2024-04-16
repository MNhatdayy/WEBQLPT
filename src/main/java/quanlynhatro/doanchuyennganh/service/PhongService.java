package quanlynhatro.doanchuyennganh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import quanlynhatro.doanchuyennganh.entity.Phong;
import quanlynhatro.doanchuyennganh.repository.IPhongRepository;

import java.util.List;

@Service
public class PhongService implements IService<Phong> {

    @Autowired
    private IPhongRepository phongRepository;


    @Override
    public List<Phong> getAll() {
        return phongRepository.findAll();
    }

    //chỉ admin
    @Override
    public Phong insert(Phong phong) {
        return phongRepository.save(phong);
    }

    @Override
    public Phong update(Phong phong) {
        return phongRepository.save(phong);
    }


    public int getNumberOfPhongIsConTrong() {
        return phongRepository.countPhongByConTrongIsTrue();
    }
}
