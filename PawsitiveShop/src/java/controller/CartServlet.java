package controller;

import dao.CartDAO;
import bean.Cart;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet{

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException,IOException{

        int productId=
                Integer.parseInt(request.getParameter("productId"));

        int quantity=
                Integer.parseInt(request.getParameter("quantity"));

        CartDAO dao=new CartDAO();

        dao.addToCart(productId,quantity);

        response.sendRedirect("cart.jsp");

    }

}