/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.comunidad.simplecatproductowar.categorias.service;

import com.comunidad.simplecatproductowar.categorias.dao.vo.CategoriasVo;
import java.util.List;

/**
 *
 * @author Santiago
 */
public interface CategoriaService {

    List<CategoriasVo> lista(CategoriasVo categoriasVo) throws Exception;

}
