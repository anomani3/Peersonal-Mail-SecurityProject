<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<link rel="stylesheet" href="style.css">
<script language="javascript">

function validation()
{


	if(document.register.mail.value=="" || document.register.sub.value==""||document.register.msg.value=="") 
	{
		alert("Please Fill The Data");
		return false;
	}
	else
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
background-color: #fdab4f;
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
	#header2 {background: #7bbc06;color: #fff;clear:both;line-height:10px;background: orange url(bg3.jpg) ;
	font-size: 1em;font-weight: bold;padding: 8px 0;margin:0;width: 100%;}	
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
 <%
                HttpSession ses = request.getSession(true);
                String mail = ses.getAttribute("gmail").toString();
    %>
<body>
    welcome<%=mail%>
<div id="wrap">
<div id="header">Personal Mail Security</div>
<div id="header2"><table><tr><td align="left"><a href="loginsuccess.jsp"><font color="#3322dd"><b>SendMail</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Request.jsp"><font color="#3322dd"><b>Searchkey</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td align="center"><a href="decrypt.jsp"><font color="#3322dd"><b>DecryptMail</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td align="right"><a href="home.html"><font color="#3322dd"><b>SignOut</b></font></a></td></tr></table></div>
<center>
<br><br>
<div class="sideBox">
<br><font  size="+1.2" color="#660000"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>Send Mail Here</u></b></font><br><br>
<form name="register" method="post" action="sendmail.jsp" onsubmit="return validation()">

<table cellspacing="15">
<tr><td>
<b>Send To:</b>
</td>
<td><input type="text" name="mail"></td></tr>
<tr><td><b>Subject:</b></td><td><input type="text" name="sub"></td></tr>
<tr><td><b>Message:</b></td><td><textarea rows="10" cols="20" name="msg"></textarea></td></tr>
<tr><td align="right">&nbsp;&nbsp;&nbsp;<input type="submit" value="Send Mail" ></td><td align="center"><input type="reset" value="reset"></td></tr>
</table>
</form>
 <div id="footer"> personal Mail Security</strong> 
</div>
</div>

</center>

</div>

</body>
</html>