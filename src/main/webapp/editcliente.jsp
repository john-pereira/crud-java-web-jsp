<%@page import="com.cruddao.dao.ClienteDao" %>
<jsp:useBean id="c" class="com.cruddao.bean.Cliente"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>

<%
int i = ClienteDao.updateCliente(c);
response.sendRedirect("viewclientes.jsp");
%>