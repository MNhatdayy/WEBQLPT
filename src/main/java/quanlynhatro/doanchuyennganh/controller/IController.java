package quanlynhatro.doanchuyennganh.controller;

import quanlynhatro.doanchuyennganh.entity.Phong;

import java.util.List;
public interface IController<C>{
    public List<C> getAll();

    public C insert(C c);

    public C update(C c);
}
