package controller;

import dao.OrderDAO;
import bean.Order;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet{

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException,IOException{

        OrderDAO dao=new OrderDAO();

        request.setAttribute("orders",
                dao.getOrders());

        request.getRequestDispatcher(
                "customer/orders.jsp")
                .forward(request,response);

    }

}