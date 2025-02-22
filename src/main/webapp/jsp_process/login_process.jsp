<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="pass.PasswordUtil" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    String jdbcUrl = application.getInitParameter("jdbc.url");
    String dbUser = application.getInitParameter("jdbc.username");
    String dbPassword = application.getInitParameter("jdbc.password");

         try (Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
         PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM users WHERE email = ?")) {
    	   
    	   pstmt.setString(1, email);
           ResultSet rs = pstmt.executeQuery();
    	       	   
    	   if (rs.next()) {
            String hashedPasswordFromDB = rs.getString("password");
            int userId = rs.getInt("id"); 
            String username = rs.getString("name"); 

            if (PasswordUtil.verifyPassword(password, hashedPasswordFromDB)) {
                
                session.setAttribute("user_id", userId); 
                session.setAttribute("userEmail", email); 
                session.setAttribute("username", username); 

                
                Cookie cookie = new Cookie("JSESSIONID", session.getId());
                cookie.setHttpOnly(true); // 보안 강화
                cookie.setSecure(true);   // HTTPS만 허용
                response.addCookie(cookie);

                
                out.println("<script>");
                out.println("alert('로그인에 성공했습니다!');");
                out.println("window.location.href='../main.jsp';");
                out.println("</script>");
                return;
            } else {
                
                response.sendRedirect("login.html?error=invalid_password");
            }
        } else {
            
            response.sendRedirect("login.html?error=invalid_email");
        }
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("<script>alert('데이터베이스 연결에 실패했습니다.'); window.location.href='../login.html';</script>");
    }
%>