<%@page import="com.cruddao.dao.ClienteDao"%>
<jsp:useBean id="c" class="com.cruddao.bean.Cliente"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>

<%
ClienteDao.deletarCliente(c);
response.sendRedirect("viewclientes.jsp");
%>