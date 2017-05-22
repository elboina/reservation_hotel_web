<%-- 
    Document   : lister_hotels
    Created on : 22 mai 2017, 11:32:30
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
        <h1>${monTitre}</h1>
        
        <nav>
            <ul>
                <li><a href="lister_hotels">Hotels</a></li>
                <li><a href="lister_chambres">Chambres</a></li>
            </ul>
        </nav>
        <a href="ajout_hotel">Ajout d'un hotel</a>
        <table style="border-collapse: collapse">
            <thead>
            <th style="border: 1px solid black;">Id</th>
            <th style="border: 1px solid black; ">Nom</th>
            <th style="border: 1px solid black;">Adresse</th>
            <th style="border: 1px solid black;">Code Postal</th>
            </thead>
            <tbody>
        <c:forEach items="${listeHotels}" var="h">
            <tr>
                <td style="border: 1px solid black;" >${h.id}</td>
                <td style="border: 1px solid black;">${h.nom}</td>
                <td style="border: 1px solid black;">${h.adresse}</td>
                <td style="border: 1px solid black;">${h.codePostal}</td>
            </tr>
        </c:forEach>
            </tbody>
        </table>
    </body>
</html>
