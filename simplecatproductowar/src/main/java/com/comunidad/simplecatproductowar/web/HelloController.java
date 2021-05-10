/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.comunidad.simplecatproductowar.web;

import com.comunidad.simplecatproductowar.catalogo.CatalogoService;
import com.comunidad.simplecatproductowar.departamentos.dao.vo.DepartamentosVo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Santiago
 */
@Controller
public class HelloController {

    @Autowired
    private CatalogoService catalogoService;

    @RequestMapping("/hello")
    public String showHello(Model model) throws Exception {
        List<DepartamentosVo> lista = catalogoService.departamentos();
        System.out.println(lista.toString());
        model.addAttribute("titulo", "Catalogos");
        model.addAttribute("nombre", "Catalogo de productos");
        model.addAttribute("pagina", "main_test");
        model.addAttribute("menus", lista);
        return "template";
    }

    @RequestMapping({"/hello/departamento/{idDep}/categoria/{idCat}/producto/{idProd}"})
    public String getSubproductos(Model model, @PathVariable int idDep, @PathVariable int idCat, @PathVariable int idProd) throws Exception {
        System.out.println("com.comunidad.simplecatproductowar.web.HelloController.getSubproductos()");
        DepartamentosVo valor = catalogoService.getDepartamentosVo(idDep, idCat, idProd, 0);
        model.addAttribute("valor", valor);
        model.addAttribute("pagina", "main_test");
        return "template";
    }
}
