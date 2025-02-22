<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="pass.PasswordUtil" %>
<%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        if (!email.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")) {
            out.println("<script>alert('올바른 이메일 형식이 아닙니다.'); window.location.href='signup.html';</script>");
            return;
        }
        if (password.length() < 4) {
            out.println("<script>alert('비밀번호는 최소 4자 이상이어야 합니다.'); window.location.href='signup.html';</script>");
            return;
        }
        
        String jdbcUrl = application.getInitParameter("jdbc.url");
        String dbUser = application.getInitParameter("jdbc.username");
        String dbPassword = application.getInitParameter("jdbc.password");
        
        try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword)){
        	                  
        String checkEmailQuery = "SELECT * FROM users WHERE email = ?";
        
        try (PreparedStatement pstmt = conn.prepareStatement(checkEmailQuery)) {
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next()) {
                out.println("<script>alert('이미 등록된 이메일입니다.'); window.location.href='signup.html';</script>");
                return;
            }
        }
                String hashedPassword = PasswordUtil.hashPassword(password);
                String insertUserQuery = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
                try (PreparedStatement pstmt = conn.prepareStatement(insertUserQuery)) {
                    pstmt.setString(1, name);
                    pstmt.setString(2, email);
                    pstmt.setString(3, hashedPassword);
                    int rowsAffected = pstmt.executeUpdate();
                    if (rowsAffected > 0) {
                    	response.sendRedirect("login.html?success=true");
                    } else {
                        response.sendRedirect("signup.html?error=unknown");
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("signup.html?error=server_error");
            }
        %>