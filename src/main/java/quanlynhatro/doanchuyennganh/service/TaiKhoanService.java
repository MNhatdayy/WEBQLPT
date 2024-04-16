package quanlynhatro.doanchuyennganh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import quanlynhatro.doanchuyennganh.dto.request.TaiKhoanRequestDTO;
import quanlynhatro.doanchuyennganh.entity.Role;
import quanlynhatro.doanchuyennganh.entity.TaiKhoan;
import quanlynhatro.doanchuyennganh.repository.IRoleRepository;
import quanlynhatro.doanchuyennganh.repository.ITaiKhoanRepository;

import java.util.List;
import java.util.Optional;

@Service
public class TaiKhoanService implements IService<TaiKhoan> {
    @Autowired
    private ITaiKhoanRepository taiKhoanRepository;
    @Autowired
    private IRoleRepository roleRepository;

    @Override
    public List<TaiKhoan> getAll() {
        return taiKhoanRepository.findAll();
    }

    //! nếu null thì thông báo username đã tồn tại
    @Override
    public TaiKhoan insert(TaiKhoan taiKhoan) {
        return null;
    }

    public TaiKhoan insert(TaiKhoanRequestDTO taiKhoanRequestDTO) {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        taiKhoanRequestDTO.setPassword(bCryptPasswordEncoder.encode(taiKhoanRequestDTO.getPassword()));
        Optional<Role> role = roleRepository.findByMaRole(3);
        TaiKhoan taiKhoan = new TaiKhoan(
                taiKhoanRequestDTO.getUsername(),
                role.get(),
                null,
                taiKhoanRequestDTO.getPassword(),
                null,
                null);
        return taiKhoanRepository.save(taiKhoan);
    }

    @Override
    public TaiKhoan update(TaiKhoan taiKhoan) {

        return taiKhoanRepository.save(taiKhoan);
    }
}
