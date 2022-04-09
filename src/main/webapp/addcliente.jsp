<%@page import="com.cruddao.dao.ClienteDao" %>
<jsp:useBean id="c" class="com.cruddao.bean.Cliente"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>

<%
	int i = ClienteDao.addCliente(c);

	if(i > 0){
		response.sendRedirect("addcliente-success.jsp");
	}else{
		response.sendRedirect("addcliente-error.jsp");
	}
%>