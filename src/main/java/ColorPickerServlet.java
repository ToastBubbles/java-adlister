import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ColorPickerServlet", value = "/pickcolor")
public class ColorPickerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("colorpicker.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userColor = request.getParameter("usercolor");
        request.setAttribute("mycolor",userColor);

        response.sendRedirect("/viewcolor");

//        System.out.println(userTopping);
    }
}
