
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

@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet{

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException,IOException{

        int id=Integer.parseInt(request.getParameter("id"));

        ProductDAO dao=new ProductDAO();

        dao.deleteProduct(id);

        response.sendRedirect("admin/products.jsp");

    }

}