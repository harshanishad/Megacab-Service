<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<link rel="stylesheet" href="CSS/register.css">
<script defer src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
	 <div class="login_main_wrapper">
        <div class="header_section">
            <div class="abc_header_section">
                <div class="abc_header_section_left">
                    <a href="index.jsp">Overview</a>
		            <a href="gallery.jsp">Gallery</a>
		            <a href="offer.jsp">Offers</a>
		            <a href="facilities.jsp">Facilities</a>
                </div>
                <div class="abc_header_section_middle">
                  
                    <p>MEGA CITY CAB SERVICE</p>
                </div>
                <div class="abc_header_section_right">
                   
                    <a href="login.html"><button>Get Membership</button></a>
                </div>
            </div>
        </div>
        <div>
            <div class="page_body_main_wrapper">
                <div class="body_content">
                    <div class="left_warpper">
                    <form action="Register" method="post">
                        <h2>Create an your Account</h2>
                        <p>Fill your details Bellow</p>
                        <div class="left_warpper_user_input">
                        
                         <div class="user_input_tems">
                                <label for="">Customer Name</label>
                                <input name="Name" type="text" placeholder="Customer Name">
                            </div>
                            
                               <div class="user_input_tems">
                                <label for="">NIC</label>
                                <input name="NIC" type="text" placeholder="Your NIC">
                            </div>
                          
                            <div class="user_input_tems">
                                <label for="">Address</label>
                                <input name="Address" type="text" placeholder="Address">
                            </div>
                          

                            <div class="user_input_tems">
                                <label for="">Password</label>
                                <input name="pass" type="password" placeholder="Your Password">
                            </div>
                            <div class="user_check_box">
                                <input name="agree" type="checkbox">
                                <p>I agree to receive marketing, advertising and promotional information via email.</p>
                            </div>
                            <div class="user_input_tems redirect_loging_page">
                                <p>If you have an account <a href="login.jsp">Login?</a></p>
                            </div>
                        </div>
                        <div class="footer_btn">
                            <button type="submit">Register</button>
                        </div>
                        </form>
                    </div>
                    <div class="right_warpper">
                       
                    </div>
                </div>
            </div>
        </div>
        
        <div class="footer_wrapper">
            <div class="footer_header">
                <div class="footer_header_left"></div>
                <div class="footer_header_middle">
                
                    <h2>MEGA CITY CAB SERVICE</h2>
                </div>
           
            <p id="copyright_2">
               
            </p>
        </div>
    </div>
</body>
</html>