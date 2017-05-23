<%-- 
    Document   : ajout_hotel
    Created on : 22 mai 2017, 14:37:18
    Author     : formation
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajout d'hotels</title>
    </head>
    <body>
        <h1>Nouvel hotel</h1>
    <c:import url="menu"></c:import>
        <form method="POST">
            <label>Nom hotel :</label>
            <input type="text" name="nom" /><br>
            <label>Adresse :</label>
            <input type="text" name="adresse" /><br>
            <label>Code postal :</label>
            <input type="text" name="codePostal" /><br>
            <input type="submit" value="Ajouter"/>
            
            
        </form>
        <c:import url="_footer"></c:import>
    </body>
</html>
