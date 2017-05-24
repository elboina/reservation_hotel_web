<%-- 
    Document   : Menu
    Created on : 23 mai 2017, 10:01:11
    Author     : formation
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<c:if test="${cookie['langue'].value == 'fr'}">
    <nav>
        <ul style="list-style-type: none;">
            <li><a href="lister_hotels" style="text-decoration: none; color: black;">Hotels</a></li>
            <li><a href="lister_chambres" style="text-decoration: none; color: black;">Chambres</a></li>
            <li>Le ${dateEtHeure}</li>
        </ul>
    </nav>
</c:if>
<c:if test="${cookie['langue'].value == 'en'}">
    <nav>
        <ul style="list-style-type: none;">
            <li><a href="lister_hotels" style="text-decoration: none; color: black;">Hotels</a></li>
            <li><a href="lister_chambres" style="text-decoration: none; color: black;">Rooms</a></li>
            <li>${dateEtHeure}</li>
        </ul>
    </nav>
</c:if>
<a href="changer_langue?langue=fr">FR</a> <a href="changer_langue?langue=en">EN</a>



