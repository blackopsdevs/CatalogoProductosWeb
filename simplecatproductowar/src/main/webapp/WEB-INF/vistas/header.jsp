<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${titulo}</title>
        <link href="webjars/bootstrap-submenu/2.0.4/dist/css/bootstrap-submenu.min.css" rel="stylesheet">
        <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="resources/css/menukit.css">
        <link rel="stylesheet" href="resources/css/bootstrap-icons.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>

        <div class="container">
            <nav class="navbar navbar-dark bg-dark navbar-expand-lg">
                <div class="container">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="main_nav">
                        <ul class="navbar-nav">

                            <!-- -------- menu item -------- -->
                            <li class="nav-item dropdown hover darken-onshow">
                                <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Departamentos</a>
                                <ul class="dropdown-menu">
                                    <c:forEach items="${menus}" var="menu">                                                                                   
                                        <c:choose>
                                            <c:when test="${not empty menu.listCategoriaVo}">
                                                <li class="has-megasubmenu">
                                                    <a class="dropdown-item" href="#">${menu.nombre}<i class="icon-arrow"></i> </a>
                                                    <div class="megasubmenu dropdown-menu">
                                                        <div class="row">
                                                            <c:forEach items="${menu.listCategoriaVo}" var="catego">                                                        
                                                                <div class="col-6">                                                                    
                                                                    <h6 class="title">${catego.nombre}</h6>
                                                                    <!--hr class="my-4"-->
                                                                    <c:if test="${not empty catego.listProductoVo}">
                                                                        <ul class="list-unstyled">
                                                                            <c:forEach items="${catego.listProductoVo}" var="prod">                                                                            
                                                                                <li><a href="hello/departamento/${menu.id}/categoria/${catego.id}/producto/${prod.id}">${prod.nombre}</a></li>
                                                                                </c:forEach>
                                                                        </ul>
                                                                    </c:if>
                                                                </div>                                                            
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </li>
                                            </c:when>
                                            <c:otherwise>
                                                <li>
                                                    <a class="dropdown-item" href="#">${menu.nombre}</a>
                                                </li>
                                            </c:otherwise>
                                        </c:choose>                                        
                                    </c:forEach>                                 
                                </ul>
                            </li>
                            <!-- -------- menu item end// -------- -->
                            <!-- -------- menu item end// -------- -->
                        </ul>  <!-- navbar-nav.// -->
                    </div> <!-- navbar-collapse.//    -->
                </div> <!-- container.// -->
            </nav> <!-- navbar-main  .// -->


            <div class="form-check">
                <font color="red">${saludo}</font><br/>
            </div>

        </div>
    </body>
</html>