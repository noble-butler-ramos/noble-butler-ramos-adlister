package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdminUsersServlet", urlPatterns = "/admin/manage_users")
public class AdminUsersServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long adminId = Long.parseLong(request.getParameter("adminId"));
        Boolean makeAdmin = true;
        DaoFactory.getUsersDao().makeAdmin(makeAdmin,adminId);
        response.sendRedirect("/admin/manage_users");
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
        request.getRequestDispatcher("/WEB-INF/secret-admin-users.jsp").forward(request, response);    }

}




