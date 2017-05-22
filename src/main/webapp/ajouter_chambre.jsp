<%-- 
    Document   : ajouter_chambre
    Created on : 22 mai 2017, 16:41:40
    Author     : formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nouvelle Chambre</h1>
        <nav>
            <ul>
                <li><a href="lister_hotels">Hotels</a></li>
                <li><a href="lister_chambres">Chambres</a></li>
            </ul>
        </nav>
        <form method ="POST">
            <label>Nom :</label>
            <input type="text" name="nom"/><br>
            <label>Numéro : </label>
            <input type="text" name="numero"/><br>
            <label>Prix : </label>
            <input type="text" name="prix"/><br>
            <input type="submit" value="Ajouter" />
        </form>
    </body>
</html>
