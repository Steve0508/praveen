PROGRAM:
import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
public class Session extends HttpServlet {
public void doGet(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException
{
HttpSession session = request.getSession(true);
// Get session creation time.
Date createTime = new Date(session.getCreationTime());
// Get last access time of this web page.
Date lastAccessTime = new Date(session.getLastAccessedTime());
String title = "Welcome to the world of Web Technology";
Integer visitCount = new Integer(0);
String visitCountKey = new String("visitCount");
String userIDKey = new String("userID");
String userID = new String("GFG");
// Check if this is new comer on your web page.
if (session.isNew()) {
title = " Welcome to the world of Web Technology ";
session.setAttribute(userIDKey, userID);
}

else {

visitCount = (Integer)session.getAttribute(

visitCountKey);

visitCount = visitCount + 1;

userID

= (String)session.getAttribute(userIDKey);

}

session.setAttribute(visitCountKey, visitCount);

// Set response content type

response.setContentType("text/html");

PrintWriter out = response.getWriter();

String docType

= "<!doctype html public \"-//w3c//dtd html 4.0 "

+ "transitional//en\">\n";

out.println(

docType + "<html>\n"

+ "<head><title>" + title + "</title></head>\n"

+

"<body bgcolor = \"#f0f0f0\">\n"

+ "<h1 align = \"center\">" + title + "</h1>\n"

+ "<h2 align = \"center\">Web Tech Session Information</h2>\n"

+ "<table border = \"1\" align = \"center\">\n"

+

"<tr bgcolor = \"#949494\">\n"

+ " <th>Session info</th><th>value</th>"

+ "</tr>\n"

+

"<tr>\n"

+ " <td>id</td>\n"

+ " <td>" + session.getId() + "</td>"

+ "</tr>\n"

+

"<tr>\n"
	+ " <td>Creation Time</td>\n"

+ " <td>" + createTime + " </td>"

+ "</tr>\n"

+

"<tr>\n"

+ " <td>Time of Last Access</td>\n"

+ " <td>" + lastAccessTime + "</td>"

+ "</tr>\n"

+

"<tr>\n"

+ " <td>User ID</td>\n"

+ " <td>" + userID + "</td>"

+ "</tr>\n"

+

"<tr>\n"

+ " <td>Number of visits</td>\n"

+ " <td>" + visitCount + "</td>"

+ "</tr>\n"

+ "</table>\n"

+ "</body>"

+ "</html>");

}

}
