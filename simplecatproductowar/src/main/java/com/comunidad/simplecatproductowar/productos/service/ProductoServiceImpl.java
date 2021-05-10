/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.comunidad.simplecatproductowar.productos.service;

import com.comunidad.simplecatproductowar.productos.dao.ProductoDao;
import com.comunidad.simplecatproductowar.productos.dao.vo.ProductosVo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Santiago
 */
@Service
public class ProductoServiceImpl implements ProductoService {

    @Autowired
    private ProductoDao productoDao;

    @Override
    public List<ProductosVo> lista(ProductosVo productosVo) throws Exception {
        return productoDao.lista(productosVo);
    }


}
