package quanlynhatro.doanchuyennganh.service;

import org.springframework.stereotype.Service;
import java.util.List;
@Service
public interface IService<S> {
    public List<S> getAll();

    public S insert(S s);

    public S update(S s);

}
