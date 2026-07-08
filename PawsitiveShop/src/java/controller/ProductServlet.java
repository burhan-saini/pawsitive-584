package controller;

import dao.ProductDAO;
import bean.Product;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        ProductDAO dao = new ProductDAO();

        request.setAttribute("products", dao.getAllProducts());

        RequestDispatcher rd =
                request.getRequestDispatcher("customer/products.jsp");

        rd.forward(request,response);

    }

}