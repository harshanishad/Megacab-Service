package com.megacab.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.megacab.model.LoginModel;

public class LoginRepo {

    // Declare Connection at the class level to avoid reuse issues
    private Connection con = null;

    // Hardcoded admin credentials
    private static final String ADMIN_USERNAME = "admin";
    private static final String ADMIN_PASSWORD = "123";

    public String checkUser(LoginModel loginModel) {
        String responseMessage = "";

        // Check for admin login first
        if (loginModel.getEmail().equals(ADMIN_USERNAME) && loginModel.getPassword().equals(ADMIN_PASSWORD)) {
            return "Admin Login Successfully";
        }

        // Declare PreparedStatement and ResultSet to ensure they are closed properly
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/megacab", "root", "root");

            String sql = "SELECT * FROM registered_user_details WHERE name = ?";
            pst = con.prepareStatement(sql);
            pst.setString(1, loginModel.getEmail());

            rs = pst.executeQuery();

            if (rs.next()) {
                String dUPass = rs.getString("password");

                // Check user type and password match
                if (dUPass.equals(loginModel.getPassword())) {
                    responseMessage = "User Login Successfully";
                } else {
                    responseMessage = "Invalid Password";
                }
            } else {
                responseMessage = "Invalid User Name";
            }

        } catch (ClassNotFoundException e) {
            responseMessage = "Error loading database driver: " + e.getMessage();
        } catch (SQLException e) {
            responseMessage = "Database error occurred: " + e.getMessage();
        } catch (Exception e) {
            responseMessage = "Unexpected error: " + e.getMessage();
        } finally {
            try {
                if (rs != null) rs.close();   // Close ResultSet
                if (pst != null) pst.close(); // Close PreparedStatement
                if (con != null) con.close(); // Close Connection
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return responseMessage;
    }
}