/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.comunidad.simplecatproductowar.subproductos.service;

import com.comunidad.simplecatproductowar.subproductos.dao.DetalleSubprodDao;
import com.comunidad.simplecatproductowar.subproductos.dao.SubproductoDao;
import com.comunidad.simplecatproductowar.subproductos.dao.vo.DetalleSubprodVo;
import com.comunidad.simplecatproductowar.subproductos.dao.vo.SubproductosVo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Santiago
 */
@Service
public class SubproductoServiceImpl implements SubproductoService {

    @Autowired
    private SubproductoDao subproductoDao;

    @Override
    public List<SubproductosVo> lista(SubproductosVo subproductosVo) throws Exception {
        return subproductoDao.lista(subproductosVo);
    }

}
