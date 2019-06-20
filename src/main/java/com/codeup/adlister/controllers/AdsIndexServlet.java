package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession().getAttribute("listAds") == null){
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
            System.out.println(request.getSession().getAttribute("listAds"));

            request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
        else{
            request.setAttribute("ads", (request.getSession().getAttribute("listAds")));
            request.getSession().removeAttribute("listAds");
            request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Long id = Long.parseLong(request.getParameter("id"));
//        DaoFactory.getAdsDao().deleteAds(id);
//        response.sendRedirect("/ads");
        String title = request.getParameter("title");
        List<Ad> ads = DaoFactory.getAdsDao().findAdByTitle(title);
        request.getSession().setAttribute("listAds",ads);
        response.sendRedirect("/ads");

    }
}
