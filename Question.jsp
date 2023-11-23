<html>
<body>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<% 
Connection con=null;
Statement s=null;
ResultSet rs=null;
String a1,a2,x,y;
int a=0;
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	a1=request.getParameter("username");
	a2=request.getParameter("password");
	con=DriverManager.getConnection("jdbc:odbc:online","","");
	s=con.createStatement();
	rs=s.executeQuery("select*from praveen");
	while(rs.next())
	{
		x=rs.getString("username");
		if(a1.equals(x))
		{
			y=rs.getString("password");
			if(a2.equals(y))
			{
				a=1;
			}
		}
		if(a==1)
		{
			out.println("<form id=\"form1\"method=\"get\"action=\"http://localhost:8080/Steve/Score.jsp\">");
			out.println("<h1>Select any one of the options to answer</h1>");
			out.println("<h2>which language is Object Oriented Programming ?</h2>");
			out.println("<input type=\"radio\"name=\"r1\"value=\"java\"/>java<br>");
			out.println("<input type=\"radio\"name=\"r1\"value=\"Php\"/>Php<br>");
			out.println("<h2>Who is the President of India ?</h2>");
			out.println("<input type=\"radio\"name=\"r2\"value=\"N.Modi\"/>N.Modi<br>");
			
			out.println("<input type=\"radio\"name=\"r2\"value=\"Ramnad Govind sign\"/>Ramnad Govind sign<br>");
			out.println("<h2>Who is the financial Minister of India ?</h2>");
			out.println("<input type=\"radio\"name=\"r3\"value=\"Nirmala Seetaraman\"/>Nirmala Seetaraman<br>");
			
			out.println("<input type=\"radio\"name=\"r3\"value=\"Vaj Bhai\"/>Vaj Bhai<br>");
			
		out.println("<input type=\"submit\"value=\"Submit\"/></form>");
			
			
		}
		else
			out.println("<h1>Invalid login</h1>");
		
	}
}

catch(Exception e)
{
}
%>
</body>
</html>