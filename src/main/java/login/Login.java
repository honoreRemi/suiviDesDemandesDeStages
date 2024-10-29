package login;

import models.DatabaseConnexion;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection con = DatabaseConnexion.getConnection();
             PreparedStatement pst = con.prepareStatement("SELECT * FROM demandeur WHERE email = ? AND password = ?")) {
            pst.setString(1, email);
            pst.setString(2, password);
            ResultSet res = pst.executeQuery();

            if (res.next()) {
                session.setAttribute("email", email);
                response.sendRedirect("Views/demandeur/dashboard.jsp");
            } else {
                response.sendRedirect("index.jsp");
            }
        } catch (SQLException e) {
            System.out.println("Erreur : Échec de la connexion à la base de données");
            e.printStackTrace();
        }
    }
}