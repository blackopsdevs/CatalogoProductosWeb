<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Welcome</title>
        <link href="webjars/bootstrap-submenu/2.0.4/dist/css/bootstrap-submenu.min.css" rel="stylesheet">
        <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <c:forEach items="${menus}" var="menu">
                            <a class="dropdown-item" href="#">${menu.nombre}</a>
                            <c:if test="${not empty menu.listCategoriaVo}">
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <c:forEach items="${menu.listCategoriaVo}" var="catego">
                                        <a class="dropdown-item" href="#">${catego.nombre}</a>                                       
                                    </c:forEach>
                                </div>
                            </c:if>
                        </c:forEach>
                        <!--a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a-->
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Link
                    </a>
                    <div class="dropdown">
                        <!-- Link or button to toggle dropdown -->
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                            <li><a tabindex="-1" href="#">Action</a></li>
                            <li><a tabindex="-1" href="#">Another action</a></li>
                            <li><a tabindex="-1" href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a tabindex="-1" href="#">Separated link</a></li>
                        </ul>
                    </div>
                </li> 
            </ul>           
        </div>
    </nav>

    <div class="container">
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" data-submenu="" aria-expanded="false">
                Dropdown
            </button>

            <div class="dropdown-menu" style="">
                <div class="dropdown dropright dropdown-submenu">
                    <button class="dropdown-item dropdown-toggle" type="button" data-toggle="dropdown">Action</button>

                    <div class="dropdown-menu">
                        <button class="dropdown-item" type="button">Sub action</button>

                        <div class="dropdown dropright dropdown-submenu">
                            <button class="dropdown-item dropdown-toggle" type="button">Another sub action</button>

                            <div class="dropdown-menu">
                                <button class="dropdown-item" type="button">Sub action</button>
                                <button class="dropdown-item" type="button">Another sub action</button>
                                <button class="dropdown-item" type="button">Something else here</button>
                            </div>
                        </div>

                        <button class="dropdown-item" type="button">Something else here</button>
                        <button class="dropdown-item" type="button" disabled="">Disabled action</button>

                        <div class="dropdown dropright dropdown-submenu">
                            <button class="dropdown-item dropdown-toggle" type="button">Another action</button>

                            <div class="dropdown-menu">
                                <button class="dropdown-item" type="button">Sub action</button>
                                <button class="dropdown-item" type="button">Another sub action</button>
                                <button class="dropdown-item" type="button">Something else here</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="dropdown-header">Dropdown header</div>

                <div class="dropdown dropright dropdown-submenu">
                    <button class="dropdown-item dropdown-toggle" type="button">Another action</button>

                    <div class="dropdown-menu">
                        <button class="dropdown-item" type="button">Sub action</button>
                        <button class="dropdown-item" type="button">Another sub action</button>
                        <button class="dropdown-item" type="button">Something else here</button>
                    </div>
                </div>

                <button class="dropdown-item" type="button">Something else here</button>
                <div class="dropdown-divider"></div>
                <button class="dropdown-item" type="button">Separated link</button>

            </div>
        </div>
        <div class="form-check">
            <font color="red">${saludo}</font><br/>
        </div>
        <div class="form-check">
            <div class="btn-group">
                <button class="btn btn-primary dropdown-toggle"
                        type="button"
                        id="dropdownMenuButton" data-toggle="dropdown">
                    Tutorials
                </button>
                <ul class="dropdown-menu">
                    <c:forEach items="${menus}" var="menu">
                        <li>

                            <a class="dropdown-item" href="#">${menu.nombre}</a>
                            <c:if test="${not empty menu.listCategoriaVo}">
                                <ul class="dropdown-menu">
                                    <c:forEach items="${menu.listCategoriaVo}" var="catego">
                                        <li>

                                            <a class="dropdown-item" href="#">${catego.nombre}</a>
                                        </li>
                                    </c:forEach>

                                </ul>

                            </c:if>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <script src="webjars/jquery/3.4.0/jquery.min.js"></script>
        <script src="webjars/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="webjars/bootstrap-submenu/2.0.4/js/bootstrap-submenu.js"></script>
    </div>
</body>
</html>