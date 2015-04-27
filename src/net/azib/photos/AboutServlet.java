package net.azib.photos;

import com.google.gdata.util.ServiceException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import static javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
import static javax.servlet.http.HttpServletResponse.SC_NOT_FOUND;

public class AboutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        Picasa picasa = new Picasa();
        try {
            req.setAttribute("gallery", picasa.getGallery());
            req.setAttribute("picasa", picasa);
        } catch (ServiceException e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("/WEB-INF/jsp/about.jsp").forward(req, resp);
    }
}
