<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="CSS/NewFile.css">
</head>
<body>
<input type="hidden" id="Response" value="<%=request.getAttribute("Response")%>">
<div class="login_main_wrapper">
        <div class="header_section">
            <div class="abc_header_section">
                <div class="abc_header_section_left">
                    <a href="">Welcome</a>
                    <a href="">Types</a>
                    <a href="">Select Your Choice</a>
                    <a href="">Offers</a>
                </div>
                <div class="abc_header_section_middle">
                   <!--  <img src="assert/login_im.png" width="70" height="70" alt="LOGO" /> -->
                    <p>MEGA CITY CAB SERVICE</p>
                </div>
                <div class="abc_header_section_right">
                    <img src="assert/search.png" width="20" alt="Search" />
                    <a href="login.html"><button>Get Membership</button></a>
                </div>
            </div>
        </div>
        <div>
            <div class="page_body_main_wrapper">
                <div class="body_content">
                    <div class="left_warpper">
                      <form action="Login" method="get">
                        <h2>Login your Account</h2>
                        <p>Fill your details Bellow</p>
                        <div class="left_warpper_user_input">
                            
                            <div class="user_input_tems">
                                <label for="">User Name</label>
                                <input name="name" type="text" placeholder="User Name">
                            </div>

                            <div class="user_input_tems">
                                <label for="">Password</label>
                                <input name="pass" type="password" placeholder="Your Password">
                            </div>

                            <div class="user_input_tems redirect_loging_page">
                                <p> <a href="forgot.jsp">Forget Password?</a></p>
                            </div>

                            <div class="sign_in_method">
                               <!--  <div class="sign_in_method_icons">
                                    <img src="assert/social-media1.png" alt="" width="100%" height="100%" >
                                </div>
                                <div class="sign_in_method_icons">
                                    <img src="assert/social2.png" alt="" width="100%" height="100%" >
                                </div>
                                <div class="sign_in_method_icons">
                                    <img src="assert/social3.png" alt="" width="100%" height="100%">
                                </div> -->
                            </div>
                            <div class="user_input_tems redirect_loging_page">
                                <p>If you hav'nt account <a href="register.jsp">register?</a></p>
                            </div>
                        </div>
                        <div class="footer_btn">
                            <button type="submit" id="loginBtn">Login</button>
                        </div>
                        </form>
                    </div>
                    <div class="right_warpper">
                        <img src="assert/login_im.png" height="400" width="100%" alt="" >
                    </div>
                </div>
            </div>
        </div>
        
        <div class="footer_wrapper">
            <div class="footer_header">
                <div class="footer_header_left"></div>
                <div class="footer_header_middle">
                    <img src="Assert/Group.svg" width="60" alt="" srcset="" />
                    <h2>MEGA CITY CAB SERVICE</h2>
                </div>
                <div class="footer_header_right"></div>
            </div>
            
            
            
        </div>
    </div>
     <!-- Popup Container -->
    <div id="popup" class="popup">
        <div class="popup-content">
            <span class="close">&times;</span>
            <h3>Popup Message</h3>
            <p>This is a simple popup message. You can put any content here.</p>
        </div>
    </div>
    <script defer src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script defer type="text/javascript">
    var popup = document.getElementById("popup");
    	var message = document.getElementById("Response").value;
    	const loginBtn = document.getElementById("loginBtn");
    	loginBtn.addEventListener("click",()=>{
    		console.log(message);
        	if(message == "success"){
        		popup.style.display = "block";
        	}else{
        		Swal.fire({
        			  title: "Good job!",
        			  text: "Successfully login your account",
        			  icon: "success"
        			});
        	}
    	});
    	// Get the popup element
    	var popup = document.getElementById("popup");

    	// Get the button that opens the popup
    	var popupBtn = document.getElementById("popupBtn");

    	// Get the <span> element that closes the popup
    	var closeBtn = document.getElementsByClassName("close")[0];

    	// When the user clicks the button, open the popup
    	popupBtn.onclick = function() {
    	    popup.style.display = "block";
    	}

    	// When the user clicks on <span> (x), close the popup
    	closeBtn.onclick = function() {
    	    popup.style.display = "none";
    	}

    	// When the user clicks anywhere outside of the popup, close it
    	window.onclick = function(event) {
    	    if (event.target == popup) {
    	        popup.style.display = "none";
    	    }
    	}

    </script>
</body>
</html>