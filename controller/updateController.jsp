<%@include file="../inc/connect.jsp"%>

<%
  String id = request.getParameter("id");
  String bookName = request.getParameter("bookName");

  if(bookName.isEmpty()) {
    response.sendRedirect("../updateForm.jsp");
  }
  else {
    String query = String.format("UPDATE books SET bookName = '%s' WHERE id = '%s'", bookName, id);
    st.executeUpdate(query);
    response.sendRedirect("../index.jsp");
  }
%>