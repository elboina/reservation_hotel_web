/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webtest.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import webtest.entity.Hotel;
import webtest.service.HotelService;

/**
 *
 * @author formation
 */
@WebServlet(name = "ListerHotelsServlet", urlPatterns = {"/lister_hotels"})
public class ListerHotelsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       //Récupère la liste des hotels à partir du service
       String titre = "Liste des hotels";
       req.setAttribute("monTitre", titre);
        HotelService hs = new HotelService();
        List<Hotel> hotels = hs.lister();
        
        req.setAttribute("listeHotels", hotels);
       //Renvoie vers vue lister_hotels.jsp
       req.getRequestDispatcher("lister_hotels.jsp").forward(req, resp);
    }

   

   
       

}
