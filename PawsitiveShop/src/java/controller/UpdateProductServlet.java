package controller;

import dao.ProductDAO;
import bean.Product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet{

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException,IOException{

        Product p=new Product();

        p.setProductId(Integer.parseInt(request.getParameter("id")));
        p.setName(request.getParameter("name"));
        p.setPrice(Double.parseDouble(request.getParameter("price")));
        p.setStock(Integer.parseInt(request.getParameter("stock")));

        ProductDAO dao=new ProductDAO();

        dao.updateProduct(p);

        response.sendRedirect("admin/products.jsp");

    }

}