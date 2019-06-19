package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdminDashboardServlet", urlPatterns = "/admin")
public class AdminDashboardServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = Long.parseLong(request.getParameter("deleteUser"));
//        request.getSession().setAttribute("deleteUser", id);
        DaoFactory.getUsersDao().deleteUsers(id);
        response.sendRedirect("/admin");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        boolean isAdmin= (boolean)request.getSession().getAttribute("isAdmin");

        if (!isAdmin) {
            response.sendRedirect("/login");
            return;
        }
        request.setAttribute("users", DaoFactory.getUsersDao().all());
        request.getRequestDispatcher("/WEB-INF/secret-admin-page.jsp").forward(request, response);    }

    }



