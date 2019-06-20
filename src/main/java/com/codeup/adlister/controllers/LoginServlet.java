package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = DaoFactory.getUsersDao().findByUsername(username);

        if (user == null) {
            response.sendRedirect("/login");
            return;
        }

        boolean isAdmin = user.isAdmin();
        request.getSession().setAttribute("isAdmin", isAdmin);
        boolean validAttempt = Password.check(password, user.getPassword());


        if (isAdmin && validAttempt) {
            request.getSession().setAttribute("isAdmin", true);
            request.getSession().setAttribute("user", user);
            response.sendRedirect("/admin");
            return;
        }else{
            request.getSession().setAttribute("isAdmin", false);
        }



        if (validAttempt) {
            request.getSession().setAttribute("user", user);
            RequestDispatcher rd = request.getRequestDispatcher("/");
            rd.forward(request,response);
        } else {
            response.sendRedirect("/login");
        }
    }
}
