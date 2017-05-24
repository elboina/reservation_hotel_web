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
        <c:if test="${cookie['langue'].value=='fr'}"><h1>${monTitre}</h1></c:if>
        <c:if test="${cookie['langue'].value=='en'}"><h1>Hotel list</h1></c:if>

        <c:import url="menu"></c:import>
        

        <c:if test="${cookie['langue'].value=='fr'}"><a href="ajout_hotel">Ajout d'un hotel</a></c:if>
        <c:if test="${cookie['langue'].value=='en'}"><a href="ajout_hotel">Add an hotel</a></c:if>
            <table style="border-collapse: collapse">
                <thead>
                <c:if test="${cookie['langue'].value=='fr'}">
                <th style="border: 1px solid black;">Id</th>
                <th style="border: 1px solid black; ">Nom</th>
                <th style="border: 1px solid black;">Adresse</th>
                <th style="border: 1px solid black;">Code Postal</th>
                <th style="border: 1px solid black;">Action</th>
                </c:if>
                <c:if test="${cookie['langue'].value == 'en'}">
                <th style="border: 1px solid black;">Id</th>
                <th style="border: 1px solid black; ">Name</th>
                <th style="border: 1px solid black;">Address</th>
                <th style="border: 1px solid black;">ZIPCode</th>
                <th style="border: 1px solid black;">Action</th>
                </c:if>
        </thead>
        <tbody>

            <c:forEach items="${listeHotels}" var="h">


                <c:if test="${cookie['langue'].value=='en'}">

                    <tr>
                        <td style="border: 1px solid black;" >${h.id}</td>
                        <td style="border: 1px solid black;">${h.nom}</td>
                        <td style="border: 1px solid black;">${h.adresse}</td>
                        <td style="border: 1px solid black;">${h.codePostal}</td>
                        <td style=" border: 1px black solid;"><button><a href="supprimer_hotel?Idhotel=${h.id}">Delete</a></button></td>
                    </tr>
                </c:if>

                <c:if test="${cookie['langue'].value == 'fr'}">
                    <tr>
                        <td style="border: 1px solid black;" >${h.id}</td>
                        <td style="border: 1px solid black;">${h.nom}</td>
                        <td style="border: 1px solid black;">${h.adresse}</td>
                        <td style="border: 1px solid black;">${h.codePostal}</td>
                        <td style=" border: 1px black solid;"><button><a href="supprimer_hotel?Idhotel=${h.id}">Supprimer</a></button></td>
                    </tr>
                </c:if>


            </c:forEach>
        </tbody>
    </table>
    <c:import url="_FOOTER.jsp"></c:import>
</body>

</html>
