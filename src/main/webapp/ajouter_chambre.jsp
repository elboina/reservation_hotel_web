<%-- 
    Document   : ajouter_chambre
    Created on : 22 mai 2017, 16:41:40
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
        <h1>Nouvelle Chambre</h1>
        <c:import url="menu"></c:import>
        <form method ="POST">
            <label>Nom :</label>
            <input type="text" name="nom"/><br>
            <label>Numéro : </label>
            <input type="text" name="numero"/><br>
            <label>Prix : </label>
            <input type="text" name="prix"/><br>
            <select name="hotels">
                <c:forEach items="${listeHotels}" var="h">
                    <option value="${h.id}">${h.nom}</option>
                </c:forEach>
            </select><br>
            <input type="submit" value="Ajouter" />
        </form>
        <c:import url="_footer"></c:import>
    </body>
</html>
