<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.sun.org.apache.xml.internal.security.utils.Base64" %>
<%@ page import="com.review.wiki.RWordCloude" %>
<html>
   <body>
  <h1>WordCloude</h1>  
<%
RWordCloude con = new RWordCloude();
%>
<img src="data:image/jpg;base64, <%=Base64.encode(con.returnRImg())%>"/>
</body>
</html>


<%-- 
R console (RGUI) 에서 미리 실행시켜야 작동
library(Rserve)

Rserve(FALSE,port=6311,args='--RS-encoding utf8 --no-save --slave --encoding utf8  --internet2')

Rserve(args="--RS- encoding utf8")

Rserve(FALSE,port=6311,args='--RS-encoding utf8 --no-save --slave --encoding utf8')

--%>