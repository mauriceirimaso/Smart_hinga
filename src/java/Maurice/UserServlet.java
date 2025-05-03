import Maurice.Dao.UserDao;
import Maurice.mosel.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet("/")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao = new UserDao();

    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        this.doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getServletPath();

       
            switch (action) {
                case "/insert" -> {
                try {
                    insertUser(request, response);
                } catch (SQLException ex) {
                     ex.printStackTrace();
                }
             }
                case "/validate" -> {
                    try {
                        searchUser(request, response);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
            }
            }
       
    }
    


    private void insertUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String fname = request.getParameter("firstname");
        String lname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String dob = request.getParameter("birthday");
        String pwd = request.getParameter("password");
        String pwdd = request.getParameter("repassword");
        User newUser = new User(fname, lname, email, dob, pwd, pwdd);
        try {
            this.userDao.insertUser(newUser);
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.getMessage());
        }
        response.sendRedirect("signup.jsp");
    }
    
     private void searchUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        
        String email = request.getParameter("email");
        String pwd = request.getParameter("password");
        try {
            if(!this.userDao.selectUser(email, pwd)){
                response.sendRedirect("login.jsp");
            }else {
                response.sendRedirect("register.jsp");
            } 
            
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.getMessage());
        }
       
    }
}
