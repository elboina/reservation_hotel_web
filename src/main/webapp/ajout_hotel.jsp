<%-- 
    Document   : ajout_hotel
    Created on : 22 mai 2017, 14:37:18
    Author     : formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajout d'hotels</title>
    </head>
    <body>
        <h1>Nouvel hotel</h1>
        <nav>
            <ul>
                <li><a href="lister_hotels">Hotels</a></li>
                <li><a href="lister_chambres">Chambres</a></li>
            </ul>
        </nav>
        <form method="POST">
            <label>Nom hotel :</label>
            <input type="text" name="nom" /><br>
            <label>Adresse :</label>
            <input type="text" name="adresse" /><br>
            <label>Code postal :</label>
            <input type="text" name="codePostal" /><br>
            <input type="submit" value="Ajouter"/>
            
            
        </form>
    </body>
</html>
