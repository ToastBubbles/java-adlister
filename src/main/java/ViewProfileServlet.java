import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.getSession().invalidate();
//        boolean shrimp = false;


//        response.sendRedirect("/login");
        if(request.getSession().getAttribute("isLoggedIn") != null){
            if((boolean) request.getSession().getAttribute("isLoggedIn")) {
                request.setAttribute("user", (String) request.getSession().getAttribute("user"));
                request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
            }

        }else{
            response.sendRedirect("/login");
            return;
        }
    }
}