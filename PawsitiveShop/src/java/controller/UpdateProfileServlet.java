package controller;

import dao.UserDAO;
import bean.User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        User user = new User();

        user.setUserId(Integer.parseInt(request.getParameter("id")));
        user.setName(request.getParameter("name"));
        user.setPhone(request.getParameter("phone"));
        user.setAddress(request.getParameter("address"));

        UserDAO dao = new UserDAO();

        dao.update(user);

        response.sendRedirect("customer/profile.jsp");

    }

}