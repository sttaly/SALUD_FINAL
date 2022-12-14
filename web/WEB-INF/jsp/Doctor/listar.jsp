<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Doctor</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    </head>

    <body class="container">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-4">
                    <h3>Lista de Doctores</h3>
                    <a class="btn btn-primary" href="./agregar.htm">Nuevo Registro</a>
                    <table class="table table-striped">
                        <tr>
                            <td>ID</td>
                            <td>Nombre</td>
                            <td>Especialidad</td>
                            <td>Horario</td>
                            <td>Telefono</td>
                            <td>Editar</td>
                            <td>Eliminar</td>
                        </tr>
                        <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.IDDoctor}</td>
                                <td>${dato.Nombre}</td>
                                <td>${dato.NEspecialidad}</td>
                                <td>${dato.NHorario}</td>
                                <td>${dato.Telefono}</td>
                                <td><a class="btn btn-warning" href="./editar.htm?ID=${dato.IDDoctor}">Editar</a></td>
                                <td><a  class="btn btn-danger" href="./eliminar.htm?ID=${dato.IDDoctor}">Eliminar</a></td>
                            </tr>
                         </c:forEach>
                     </table>
                    <a class="btn btn-primary" href="./../links.htm">Menu Principal</a>
                </div>              
            </div>
        </div>
    </body>
</html>
