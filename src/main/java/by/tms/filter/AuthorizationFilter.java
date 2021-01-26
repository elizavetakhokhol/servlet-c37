package by.tms.filter;


import by.tms.model.Role;
import by.tms.model.User;
import by.tms.storage.InMemoryUserStorage;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(servletNames = "AuthorizationServlet")

public class AuthorizationFilter extends HttpFilter {

    private final InMemoryUserStorage inMemoryUserStorage = new InMemoryUserStorage();

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        super.doFilter(req, res, chain);
        if (req.getMethod().equals("POST")) {

            String login = req.getParameter("login");
            String password = req.getParameter("password");
            User byLogin = inMemoryUserStorage.getByLogin(login);
            if (byLogin == null|| password==null) {
                req.setAttribute("message1", " Enter your login or password!");
                getServletContext().getRequestDispatcher("/pages/auth.jsp").forward(req, res);
            }
        } else {
            chain.doFilter(req, res);
        }
    }
}
