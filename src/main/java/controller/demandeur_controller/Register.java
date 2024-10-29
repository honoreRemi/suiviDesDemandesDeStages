package controller.demandeur_controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.DatabaseConnexion;



/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        // Récupérer les paramètres du formulaire
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String établissement = request.getParameter("établissement");
        String filière = request.getParameter("filière");
        String typeStage = request.getParameter("typeStage");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String dateDebut = request.getParameter("dateDebut");
        String dateFin = request.getParameter("dateFin");
        String durée = request.getParameter("durée");
        String password1 = request.getParameter("password");
        String passwordConfirmation = request.getParameter("conf_password");

        // Vérifier que les mots de passe correspondent
        if (!password1.equals(passwordConfirmation)) {
            // Renvoyer une erreur à la page JSP
            request.setAttribute("error", "Les mots de passe ne correspondent pas.");
            request.getRequestDispatcher("Views/demandeur/register_request.jsp").forward(request, response);
            return;
        }

        try {
        	Connection con = DatabaseConnexion.getConnection();

            // Préparer la requête SQL
            String sql = "INSERT INTO demandeur (nom, prenom, établissement, filière, typeStage, email, phone, dateDebut, dateFin, durée, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, nom);
            statement.setString(2, prenom);
            statement.setString(3, établissement);
            statement.setString(4, filière);
            statement.setString(5, typeStage);
            statement.setString(6, email);
            statement.setString(7, phone);
            statement.setString(8, dateDebut);
            statement.setString(9, dateFin);
            statement.setString(10, durée);
            statement.setString(11, password1);

            // Exécuter la requête
            statement.executeUpdate();

            // Rediriger vers la page de connexion
            response.sendRedirect("index.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            // Renvoyer une erreur à la page JSP
            request.setAttribute("error", "Une erreur est survenue lors de l'enregistrement.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
	}

}
