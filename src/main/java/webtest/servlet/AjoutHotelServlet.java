/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webtest.servlet;

import java.io.IOException;
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
@WebServlet(name = "AjoutHotelServlet", urlPatterns = {"/ajout_hotel"})
public class AjoutHotelServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Renvoie la page ajout_hotel
        req.getRequestDispatcher("ajout_hotel.jsp").forward(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //Récupère les attributs de formulaire et les place dans un hotel
        Hotel h = new Hotel();
        h.setNom(req.getParameter("nom"));
        h.setAdresse(req.getParameter("adresse"));
        h.setCodePostal(Long.valueOf(req.getParameter("codePostal")));
        
        HotelService service = new HotelService();
        service.ajouter(h);
//        ListerHotelsServlet lhs = new ListerHotelsServlet();
//        lhs.doGet(req, resp);
        resp.sendRedirect("lister_hotels");
        
    }
    
}
