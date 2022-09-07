<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>콜백 페이지</title>
  </head>
  <body>
	  <h1>콜백 페이지</h1>
	  <pre>${res}</pre>
	  <a href="/naver">go to main page</a>
  </body>
</html>