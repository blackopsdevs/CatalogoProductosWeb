/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.comunidad.simplecatproductowar.subproductos.service;

import com.comunidad.simplecatproductowar.subproductos.dao.vo.DetalleSubprodVo;
import java.util.List;

/**
 *
 * @author Santiago
 */
public interface DetalleSubprodService {

    List<DetalleSubprodVo> lista(DetalleSubprodVo detalleSubprodVo) throws Exception;
}
