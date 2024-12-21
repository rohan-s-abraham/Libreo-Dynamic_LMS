/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import DAO.UserDAO;
import entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ResetPassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        // Check if passwords match
        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("message", "Confirm password does not match with the New Password!");
            request.getRequestDispatcher("ResetPassword.jsp").forward(request, response);
            return;
        }

        UserDAO uDAO = new UserDAO();
        User user = uDAO.findUserByUsername(username);
        if (user != null) {
            user.setPassword(confirmPassword);
            uDAO.updateUser(user);

            request.setAttribute("messagRegister", "Reset successful, please log in.");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            request.setAttribute("message", "Username does not exist!");
            request.getRequestDispatcher("ResetPassword.jsp").forward(request, response);
        }
    }
}
