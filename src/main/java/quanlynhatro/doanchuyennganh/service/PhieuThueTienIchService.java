package quanlynhatro.doanchuyennganh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import quanlynhatro.doanchuyennganh.entity.ChiTietPhieuThueTienIch;
import quanlynhatro.doanchuyennganh.entity.PhieuThueTienIch;
import quanlynhatro.doanchuyennganh.entity.TaiKhoan;
import quanlynhatro.doanchuyennganh.entity.TienIch;
import quanlynhatro.doanchuyennganh.repository.IChiTietPhieuThueTienIchRepository;
import quanlynhatro.doanchuyennganh.repository.IPhieuThueTienIchRepository;
import quanlynhatro.doanchuyennganh.repository.ITaiKhoanRepository;
import quanlynhatro.doanchuyennganh.repository.ITienIchRepository;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class PhieuThueTienIchService implements IService<PhieuThueTienIch> {

    @Autowired
    private IPhieuThueTienIchRepository phieuThueTienIchRepository;
    @Autowired
    private IChiTietPhieuThueTienIchRepository chiTietPhieuThueTienIchRepository;

    @Autowired
    private ITienIchRepository tienIchRepository;
    @Autowired
    private ITaiKhoanRepository taiKhoanRepository;

    @Override
    public List<PhieuThueTienIch> getAll() {
        return phieuThueTienIchRepository.findAll();
    }

    @Override
    public PhieuThueTienIch insert(PhieuThueTienIch phieuThueTienIch) {
        return null;
    }

    public List<ChiTietPhieuThueTienIch> insert(String username, List<Integer> maTienIches) {
        //
        Optional<TaiKhoan> taiKhoan = taiKhoanRepository.findByUserName(username);
        List<ChiTietPhieuThueTienIch> chiTietPhieuThueTienIches = new ArrayList<>();
        if (taiKhoan.isEmpty()) {
            return null;
        }
        List<TienIch> tienIches = tienIchRepository.findAllById(maTienIches);

        PhieuThueTienIch phieuThueTienIchSaved = PhieuThueTienIch.builder()
                .taiKhoan(taiKhoan.get())
                .ngayLap(new Date())
                .build();
        phieuThueTienIchRepository.save(phieuThueTienIchSaved);

        for (TienIch tienIch : tienIches) {
            ChiTietPhieuThueTienIch chiTietPhieuThueTienIch = ChiTietPhieuThueTienIch.builder()
                    .tinhTrang(tienIch.getTinhTrang())
                    .phieuThueTienIch(phieuThueTienIchSaved)
                    .tienIch(tienIch)
                    .build();

            chiTietPhieuThueTienIches.add(chiTietPhieuThueTienIch);
        }

        return chiTietPhieuThueTienIchRepository.saveAll(chiTietPhieuThueTienIches);
    }

    @Override
    public PhieuThueTienIch update(PhieuThueTienIch phieuThueTienIch) {
        return null;
    }


    @Transactional
    public List<ChiTietPhieuThueTienIch> update(int maPhieuThue, List<Integer> maTienIches) {
        PhieuThueTienIch phieuThueTienIch = phieuThueTienIchRepository.findById(maPhieuThue).orElseThrow();

        chiTietPhieuThueTienIchRepository.deleteByPhieuThueTienIch(phieuThueTienIch);
        List<TienIch> tienIches = tienIchRepository.findAllById(maTienIches);
        List<ChiTietPhieuThueTienIch> chiTietPhieuThueTienIches = new ArrayList<>();
        for (TienIch tienIch : tienIches) {
            ChiTietPhieuThueTienIch chiTietPhieuThueTienIch = ChiTietPhieuThueTienIch.builder()
                    .tinhTrang(tienIch.getTinhTrang())
                    .phieuThueTienIch(phieuThueTienIch)
                    .tienIch(tienIch)
                    .build();

            chiTietPhieuThueTienIches.add(chiTietPhieuThueTienIch);
        }

        return chiTietPhieuThueTienIchRepository.saveAll(chiTietPhieuThueTienIches);
    }

    public List<ChiTietPhieuThueTienIch> getAllTienIchDaThueByTaiKhoan(String username) {
        TaiKhoan taiKhoan = taiKhoanRepository.findByUserName(username).get();
        List<ChiTietPhieuThueTienIch> chiTietPhieuThueTienIches = new ArrayList<>();
        List<PhieuThueTienIch> phieuThueTienIches = phieuThueTienIchRepository.findByTaiKhoan(taiKhoan);
        for (PhieuThueTienIch phieuThueTienIch : phieuThueTienIches) {
            chiTietPhieuThueTienIches.addAll(chiTietPhieuThueTienIchRepository.findByPhieuThueTienIch(phieuThueTienIch));
        }

        return chiTietPhieuThueTienIches;
    }


}
