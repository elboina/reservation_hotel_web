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
import webtest.entity.Chambre;
import webtest.entity.Hotel;
import webtest.service.ChambreService;
import webtest.service.HotelService;

/**
 *
 * @author formation
 */
@WebServlet(name = "AjoutChambreServlet", urlPatterns = {"/ajouter_chambre"})
public class AjoutChambreServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HotelService hs = new HotelService();
        List<Hotel> hotels = hs.lister();
        req.setAttribute("listeHotels", hotels);
        req.getRequestDispatcher("ajouter_chambre.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Chambre ch = new Chambre();
        ch.setNom(req.getParameter("nom"));
        ch.setNumero(Long.valueOf(req.getParameter("numero")));
        ch.setPrix(Double.valueOf(req.getParameter("prix")));
       Long index = Long.valueOf(req.getParameter("hotels"));
        HotelService hser = new HotelService();
        Hotel h = hser.rechercher(index);
        ch.setHotel(h);
        h.getChambres().add(ch);
       new ChambreService().ajouter(ch);
        

        resp.sendRedirect("lister_chambres");
    }

}
