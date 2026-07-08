@WebServlet("/CheckoutServlet")
public class CheckoutServlet extends HttpServlet{

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException,IOException{

        OrderDAO dao=new OrderDAO();

        dao.checkout();

        response.sendRedirect("orders.jsp");

    }

}