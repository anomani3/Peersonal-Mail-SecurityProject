<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<link rel="stylesheet" href="style.css">
<script language="javascript">
function tab()
{
	if(document.register.name.value=="") 
	{
		document.getElementById("loc").innerHTML="*Please Enter Name";
		return false;
		
				
	}
	else{
		document.getElementById("loc").innerHTML="";
	}
	return true;
}
function tab1(){
	if(document.register.pwd.value=="") 
	{
		document.getElementById("pwdd").innerHTML="*Please Enter Password";
	return false;
	}else{
	document.getElementById("pwdd").innerHTML="";	
	}
	return true;
}
function tab2(){
	if(document.register.pwd2.value=="") 
	{
		document.getElementById("pwdd2").innerHTML="*Please Enter Re-Password";
		return false;
		
	}else{
		document.getElementById("pwdd2").innerHTML="";
	}
	return true;
}
function tab4(){

if(document.register.mail.value=="") 
{
	document.getElementById("mail2").innerHTML="*Please Enter Re-Password";
	return false;
	
}else{
	document.getElementById("mail2").innerHTML="";
}

return true;
}
function phonee(){

	if(document.register.phone.value=="") 
	{
		document.getElementById("phone2").innerHTML="*Please Enter phone number";
		return false;
		
	}else{
		document.getElementById("phone2").innerHTML="";
	}

	return true;
	}
	
function validation()
{


	if(document.register.name.value=="" || document.register.pwd.value==""||document.register.pwd2.value=="" || document.register.mail.value==""||document.register.phone.value=="") 
	{
		alert("Please Fill The Data");
		return false;
	}
	else
{
		if(document.register.pwd.value==document.register.pwd2.value)
		{
			var x=document.register.mail.value;
			var atpos=x.indexOf("@");
			var dotpos=x.lastIndexOf(".");
			if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
			  {
			  alert("Not a valid e-mail address");
			  return false;
			  }
			else
			{
				return true;
			}
		}
		else{
		return false;
}
		}

}
</script>



</head>

<style type="text/css">
* {margin:0;padding:0;outline: none;}

body {color: #1c1d21;background: linear-gradient(to right, #22c1c3, #fdbb2d);font: normal 13px/1.3em arial, helvetica, sans-serif;
 word-spacing: 0.1em;margin:10px 0 0;padding:0;text-align:center;}

h2 {color: #fdab4f;font-size: 2.8em;font-weight: bold;margin: 0;line-height: 0.7em;}
h3 {color: #86c303;font-size: 1.3em;margin: 0;}
h4 {color: #86c303;font-size: 1.2em;margin: 0;}
h1, h2, h3, h4 {font-family:"trebuchet MS";}
a, a:link, a:visited {color: #fd7638;text-decoration: none;}
a:hover {color: #fdab4f;text-decoration: underline;}
p { margin: 0 0 18px 0;}
span.backgroundcolor
{
background: linear-gradient(to right, #22c1c3, #fdbb2d);
} 
#wrap {width:790px;height: 100%;margin: 0 auto;text-align:left;}
#top {height:400px;width:100%;background:url(frog.jpg) no-repeat top left}
#top h1 {margin:0;padding: 70px  ;line-height:100%;color: #7bbc06;font:30px "comic sans MS", san-serif;}
#main {float:left;width: 100%;}
#content {margin-right:294px;}
#side{float: left;width: 294px;margin-left: -294px;}
#nav {background: #86c303 url(bg2.jpg);margin-top:-0px;}
#nav ul {list-style-type: none;margin: 0;padding: 5px 10px;}
#nav li a,#nav li a:link,#nav li a:visited  {
	color: #fff;line-height: 1.8em;
	padding: 0 0 0 19px;text-decoration: none;text-transform: uppercase;font-weight:bold;}
#nav li a:hover {text-decoration: underline;}
#footer {background: #7bbc06;color: #fff;clear:both;line-height:26px;background: #86c303 url(bg3.jpg) ;
	text-align:center;padding: 8px 0;margin:0;width: 100%;}
#header {background: #7bbc06;color: #fff;clear:both;line-height:26px;background: orange url(bg3.jpg) ;
	text-align:center;font-size: 2.8em;font-weight: bold;padding: 8px 0;margin:0;width: 100%;}	
#footer a, #footer a:link, #footer a:visited {
	color: #fff;font-weight: bold;text-decoration: none;}
#footer a:hover {text-decoration:underline;}

.text {padding: 16px 16px 16px 0;}
.contentBox{background:#fdab4f url(bg1.jpg);
  margin: 0 0 16px 0;padding: 5px 10px;}
  .head{background:#fdab4f;
  margin: 0 0 16px 0;padding: 15px 6px;}
.contentBox p {margin: 0;}
.sideBox {border: 2px solid #86c303;font-family:arial;
	border-bottom-width: 2px;margin: 16px 0 0 0;padding: 5px 10px;}
.more {font-size:110%;padding-left:20px;}

/* ******** the W3C checker does not allow these border shaping declarations  - but they look good (not IE)
#nav {-moz-border-radius: 1em 4em 1em 1em;border-radius: 1em 4em 1em 1em;}
#footer {-moz-border-radius: 1em 4em 1em 4em;border-radius: 1em 4em 1em 4em;}
.contentBox{-moz-border-radius: 1em 1em 1em 1em;border-radius:1em 1em 1em 1em ;}
*/

</style>

<body background: linear-gradient(to right, #22c1c3, #fdbb2d);>
<div id="wrap">
<div id="header">Personal Mail Security</div>
<center>
<div class="sideBox">
<form name="register" method="post" action="datainsert.jsp" onsubmit="return validation()">
<table cellspacing="15">
<tr >
<td>Name</td>
<td><input type="text" name="name" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more onblur="tab()">&nbsp;&nbsp;&nbsp;<span id="loc" style="color : #f00;">&nbsp;</span></td>
</tr>
<tr>
<td>GMail</td>
<td > <input type="email"  name="mail" onblur="tab4()">&nbsp;&nbsp;&nbsp;<span id="mail2" style="color : #f00;"></span></td>
</tr>
<tr>
<td>Password</td>
<td > <input type="password" name="pwd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more onblur="tab1()">&nbsp;&nbsp;&nbsp;<span id="pwdd" style="color : #f00;"></span></td>
</tr>
<tr>
<td>Re-Password</td>
<td > <input type="password" name="pwd2" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more onblur="tab2()">&nbsp;&nbsp;&nbsp;<span id="pwdd2" style="color : #f00;"></span></td>
</tr>

<tr>
<td>DOB</td>
<td><select name="day" id="Day">

                    <option label="1" value="1">1</option>

                    <option label="2" value="2">2</option>

                    <option label="3" value="3">3</option>

                    <option label="4" value="4">4</option>

                    <option label="5" value="5">5</option>

                    <option label="6" value="6">6</option>

                    <option label="7" value="7">7</option>

                    <option label="8" value="8">8</option>

                    <option label="9" value="9">9</option>

                    <option label="10" value="10">10</option>

                    <option label="11" value="11">11</option>

                    <option label="12" value="12">12</option>

                    <option label="13" value="13">13</option>

                    <option label="14" value="14">14</option>

                    <option label="15" value="15">15</option>

                    <option label="16" value="16">16</option>

                    <option label="17" value="17">17</option>

                    <option label="18" value="18">18</option>

                    <option label="19" value="19">19</option>

                    <option label="20" value="20">20</option>

                    <option label="21" value="21">21</option>

                    <option label="22" value="22">22</option>

                    <option label="23" value="23">23</option>

                    <option label="24" value="24">24</option>

                    <option label="25" value="25">25</option>

                    <option label="26" value="26">26</option>

                    <option label="27" value="27">27</option>

                    <option label="28" value="28">28</option>

                    <option label="29" value="29">29</option>

                    <option label="30" value="30">30</option>

                    <option label="31" value="31">31</option>

                  </select>

                  <select name="month" id="month"  >

                    <option label="01" value="01">01</option>

                    <option label="02" value="02">02</option>

                    <option label="03" value="03">03</option>

                    <option label="04" value="04">04</option>

                    <option label="05" value="05">05</option>

                    <option label="06" value="06">06</option>

                    <option label="07" value="07">07</option>

                    <option label="08" value="08">08</option>

                    <option label="09" value="09">09</option>

                    <option label="10" value="10">10</option>

                    <option label="11" value="11">11</option>

                    <option label="12" value="12">12</option>

                  </select>

                 <select name="year" id="year" >

                    <option label="1902" value="1902">1902</option>

                    <option label="1903" value="1903">1903</option>

                    <option label="1904" value="1904">1904</option>

                    <option label="1905" value="1905">1905</option>

                    <option label="1906" value="1906">1906</option>

                    <option label="1907" value="1907">1907</option>

                    <option label="1908" value="1908">1908</option>

                    <option label="1909" value="1909">1909</option>

                    <option label="1910" value="1910">1910</option>

                    <option label="1911" value="1911">1911</option>

                    <option label="1912" value="1912">1912</option>

                    <option label="1913" value="1913">1913</option>

                    <option label="1914" value="1914">1914</option>

                    <option label="1915" value="1915">1915</option>

                    <option label="1916" value="1916">1916</option>

                    <option label="1917" value="1917">1917</option>

                    <option label="1918" value="1918">1918</option>

                    <option label="1919" value="1919">1919</option>

                    <option label="1920" value="1920">1920</option>

                    <option label="1921" value="1921">1921</option>

                    <option label="1922" value="1922">1922</option>

                    <option label="1923" value="1923">1923</option>

                    <option label="1924" value="1924">1924</option>

                    <option label="1925" value="1925">1925</option>

                    <option label="1926" value="1926">1926</option>

                    <option label="1927" value="1927">1927</option>

                    <option label="1928" value="1928">1928</option>

                    <option label="1929" value="1929">1929</option>

                    <option label="1930" value="1930">1930</option>

                    <option label="1931" value="1931">1931</option>

                    <option label="1932" value="1932">1932</option>

                    <option label="1933" value="1933">1933</option>

                    <option label="1934" value="1934">1934</option>

                    <option label="1935" value="1935">1935</option>

                    <option label="1936" value="1936">1936</option>

                    <option label="1937" value="1937">1937</option>

                    <option label="1938" value="1938">1938</option>

                    <option label="1939" value="1939">1939</option>

                    <option label="1940" value="1940">1940</option>

                    <option label="1941" value="1941">1941</option>

                    <option label="1942" value="1942">1942</option>

                    <option label="1943" value="1943">1943</option>

                    <option label="1944" value="1944">1944</option>

                    <option label="1945" value="1945">1945</option>

                    <option label="1946" value="1946">1946</option>

                    <option label="1947" value="1947">1947</option>

                    <option label="1948" value="1948">1948</option>

                    <option label="1949" value="1949">1949</option>

                    <option label="1950" value="1950">1950</option>

                    <option label="1951" value="1951">1951</option>

                    <option label="1952" value="1952">1952</option>

                    <option label="1953" value="1953">1953</option>

                    <option label="1954" value="1954">1954</option>

                    <option label="1955" value="1955">1955</option>

                    <option label="1956" value="1956">1956</option>

                    <option label="1957" value="1957">1957</option>

                    <option label="1958" value="1958">1958</option>

                    <option label="1959" value="1959">1959</option>

                    <option label="1960" value="1960">1960</option>

                    <option label="1961" value="1961">1961</option>

                    <option label="1962" value="1962">1962</option>

                    <option label="1963" value="1963">1963</option>

                    <option label="1964" value="1964">1964</option>

                    <option label="1965" value="1965">1965</option>

                    <option label="1966" value="1966">1966</option>

                    <option label="1967" value="1967">1967</option>

                    <option label="1968" value="1968">1968</option>

                    <option label="1969" value="1969">1969</option>

                    <option label="1970" value="1970">1970</option>

                    <option label="1971" value="1971">1971</option>

                    <option label="1972" value="1972">1972</option>

                    <option label="1973" value="1973">1973</option>

                    <option label="1974" value="1974">1974</option>

                    <option label="1975" value="1975">1975</option>

                    <option label="1976" value="1976">1976</option>

                    <option label="1977" value="1977">1977</option>

                    <option label="1978" value="1978">1978</option>

                    <option label="1979" value="1979">1979</option>

                    <option label="1980" value="1980">1980</option>

                    <option label="1981" value="1981">1981</option>

                    <option label="1982" value="1982">1982</option>

                    <option label="1983" value="1983">1983</option>

                    <option label="1984" value="1984">1984</option>

                    <option label="1985" value="1985">1985</option>

                    <option label="1986" value="1986">1986</option>

                    <option label="1987" value="1987">1987</option>

                    <option label="1988" value="1988">1988</option>

                    <option label="1989" value="1989">1989</option>

                    <option label="1990" value="1990">1990</option>
                    
                    <option label="1984" value="1984">1991</option>

                    <option label="1985" value="1985">1992</option>

                    <option label="1986" value="1986">1993</option>

                    <option label="1987" value="1987">1994</option>

                    <option label="1988" value="1988">1995</option>

                    <option label="1989" value="1989">1996</option>

                    <option label="1990" value="1990">1997</option>

                  </select>

                  
</td>
</tr>
<tr>
<td>Profession</td>
<td><select name="proff">
<option value="0"  selected="selected">---Select---</option>
<option value="1" >Student</option>
<option value="2" >Employee</option>
<option value="3" >Entrepreneur</option>
<option value="4" >Other</option>
</select>
</td>
</tr>
<tr>
<td>Phone</td>
<td><input type="text" name="phone" onblur="phonee()">&nbsp;&nbsp;&nbsp;<span id="phone2" style="color : #f00;"></span></td>
</tr>
<tr>
<td>Enter the Below Code</td>
<td><input type="text" name="code"></td>
</tr>

</table>

<br>
<input type='image' src=http://localhost:8084/Personal Mail Security/CaptchaServlet>
<br><br>
<input type="submit" value="SUBMIT" >
</form>
<br><br>
<%
  String captcha = (String) session.getAttribute("captcha");

  String code = (String) request.getParameter("code");

  if (captcha != null && code != null) {

    if (captcha.equals(code)) {
	  out.print("<p class='alert'>Correct</p>");
    } else {
          out.print("<p class='alert'>Incorrect</p>");
    }
  }
%>
 <div id="footer"> Personal Mail Security</strong> 
</div>
</div>

</center>

</div>

</body>
</html>