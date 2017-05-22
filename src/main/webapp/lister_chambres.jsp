<%-- 
    Document   : lister_chambres
    Created on : 22 mai 2017, 16:29:52
    Author     : formation
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav>
            <ul>
                <li><a href="lister_hotels">Hotels</a></li>
                <li><a href="lister_chambres">Chambres</a></li>
            </ul>
        </nav>
        <a href="ajouter_chambre">Ajouter une chambre</a>
        <h1>${leTitre}</h1>
        <table style=" border-collapse: collapse;">
            <thead >
                <tr>
                    <th style= "border: 1px black solid;">Id</th>
                    <th style= "border: 1px black solid;">Nom</th>
                    <th style= "border: 1px black solid;">Numéro</th>
                    <th style= "border: 1px black solid;">Prix</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listeChambres}" var="ch">
                    <tr>
                        <td style= "border: 1px black solid;">${ch.id}</td>
                        <td style= "border: 1px black solid;">${ch.nom}</td>
                        <td style= "border: 1px black solid;">${ch.numero}</td>
                        <td style= "border: 1px black solid;">${ch.prix}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
