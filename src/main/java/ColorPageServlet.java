import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ColorPageServlet", value = "/viewcolor")
public class ColorPageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        request.setAttribute("mycolor",request.getParameter("usercolor"));
        request.setAttribute("mycolor",request.getAttribute("mycolor"));
        request.getRequestDispatcher("colorviewer.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
