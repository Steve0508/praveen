<html>
<body>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="javax.net.*" %>
<% 
Connection con=null;
Statement s=null;
ResultSet rs=null;
String x,y;
String k[]=new String[4];
int a=0;
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	k[1]=request.getParameter("r1");
	k[2]=request.getParameter("r2");
	k[3]=request.getParameter("r3");

	con=DriverManager.getConnection("jdbc:odbc:online","","");
	s=con.createStatement();
	for(int i=1;i<4;i++)
	{
	  rs=s.executeQuery("select*from answers");
	  while(rs.next())
	  {
		  x=rs.getString("answers");
		  System.out.println(x);
		  if(x.equals(k[i]))
		  {
			  a=a+10;
			  
		  }
	  }
	}
	out.println("your score is"+a);
}
catch(Exception e)
{
}
%>
</body>
</html>