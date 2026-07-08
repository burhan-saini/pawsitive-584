package controller;

import dao.ProductDAO;
import bean.Product;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Product p = new Product();

        p.setName(request.getParameter("name"));
        p.setDescription(request.getParameter("description"));
        p.setPrice(Double.parseDouble(request.getParameter("price")));
        p.setStock(Integer.parseInt(request.getParameter("stock")));
        p.setCategory(request.getParameter("category"));

        ProductDAO dao = new ProductDAO();

        dao.addProduct(p);

        response.sendRedirect("admin/products.jsp");

    }

}