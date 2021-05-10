package com.comunidad.simplecatproductowar.departamentos.dao;

import com.comunidad.simplecatproductowar.departamentos.dao.vo.DepartamentosVo;
import java.util.List;

public interface DepartamentoDao {

    List<DepartamentosVo> lista(DepartamentosVo departamentoVo) throws Exception;

    DepartamentosVo buscar(int idDep) throws Exception;
}
