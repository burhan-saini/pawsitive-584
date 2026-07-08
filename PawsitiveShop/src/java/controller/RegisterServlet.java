package controller;

import dao.UserDAO;
import bean.User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        User user = new User();

        user.setName(request.getParameter("name"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        user.setPhone(request.getParameter("phone"));
        user.setAddress(request.getParameter("address"));
        user.setRole("Customer");

        UserDAO dao = new UserDAO();

        if (dao.register(user)) {
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("register.jsp?error=1");
        }
    }
}