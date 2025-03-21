<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/main.css">
    <title>MegaCityCab</title>
</head>

<body>
    <div class="page_main_wrapper">
        <div class="t1-header">
		    <div class="page_header">
		        <div class="page_header_sub_wrapper">
		            <div class="company_logo">
		                <h1>MegaCityCab</h1>
		            </div>
		            <div class="page_search_bar">
		                <div class="pgs_main_wrapper">
		                    <input type="search" placeholder="Search for anything...." name="" id="">
		                    <div class="search_icon">
		                        <img src="assert/search.png" alt="" width="20" height="20" srcset="">
		                    </div>
		                </div>
		            </div>
		            <div class="user_indicator">
		                <img src="assert/online-shopping.png" width="25" height="25" alt="" srcset="">
		                <img src="assert/heart.png" width="25" height="25" alt="" srcset="">
		                <img src="assert/user.png" width="25" height="25" alt="" srcset="">
		                <p id="u_name">Harsha</p>
		                <a href="logout.jsp">Logout</a>
		            </div>
		        </div>
		    </div>
		    <div class="hero">
		        <div class="s2_user_selection">
		            <div class="s22_indicator">
		                <div id="all_12">
		                    <p>All Category</p>
		                </div>
		                <div class="s2_item">
		                    <img src="assert/tracking.png" width="25" height="25" alt="">
		                    <p>Track Order</p>
		                </div>
		                <div class="s2_item">
		                    <img src="assert/scale.png" width="25" height="25" alt="">
		                    <p>Track Order</p>
		                </div>
		                <div class="s2_item">
		                    <img src="assert/customer-service.png" width="25" height="25" alt="">
		                    <p>Track Order</p>
		                </div>
		                <div class="s2_item">
		                    <img src="assert/help.png" width="25" height="25" alt="">
		                    <p>Track Order</p>
		                </div>
		            </div>
		            <div class="s2_item">
		                <img src="assert/telephone.png" width="25" height="25" alt="">
		                <p>94775852366</p>
		            </div>
		        </div>
		        <div class="header_image">
		            
		        </div>
		    </div>
		</div>

        <div class="page_body">
            <div class="head_compo1">
                <h2>Top Vehicles Available</h2>
            </div>

            <div class="supplier_item">
                <%
                    // Database connection and querying vehicle details
                    String url = "jdbc:mysql://localhost:3306/megacab";
                    String user = "root";
                    String password = "root";
                    Connection con = null;
                    Statement stmt = null;
                    ResultSet rs = null;

                    try {
                        // Connect to the database
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        con = DriverManager.getConnection(url, user, password);
                        stmt = con.createStatement();
                        String query = "SELECT * FROM vehicles";
                        rs = stmt.executeQuery(query);

                        while (rs.next()) {
                            String model = rs.getString("vehicle_model");                           
                            String price = rs.getString("vehicle_rent");
                         // Convert image BLOB to base64 for display
                            byte[] imgData = rs.getBytes("vehicle_image");
                            String base64Image = "";
                            if (imgData != null) {
                                base64Image = "data:image/jpeg;base64," + java.util.Base64.getEncoder().encodeToString(imgData);
                            }
                %>

                <div class="p_item">
                    <div class="pheader">
                        <div class="instock_compo">
                            <p><%= model %></p>
                        </div>
                        <img src="assert/thumbs-up.png" width="25" height="25" alt="" />
                    </div>
                    <div class="p_img">
                        <img src="<%= base64Image %>" width="100%" height="100%" alt="Vehicle Image">
                    </div>
                    <p class="item_name"><%= model %></p>
                    <p class="item_price">LKR <%= price %></p>
                    <div class="item_add_cart_flex">
                        <div onclick="window.location.href='productDescription.jsp?id=<%= rs.getInt("vehicle_id") %>'" class="item_add_cart">
                            Rent Now
                        </div>
                    </div>
                </div>

                <%
                        }
                    } catch (Exception e) {
                        out.println("Error: " + e.getMessage());
                    } finally {
                        try {
                            if (rs != null) rs.close();
                            if (stmt != null) stmt.close();
                            if (con != null) con.close();
                        } catch (SQLException se) {
                            se.printStackTrace();
                        }
                    }
                %>
            </div>
        </div>
        <div class="page_footer">
            <div class="footer_Section">
                
                <p id="footer_copyright">@ Copyright megacity cab service 2024. All right reserved</p>
            </div>
        </div>
    </div>
</body>

</html>
