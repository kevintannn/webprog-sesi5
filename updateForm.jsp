<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Update</title>
  </head>
  <body>
    <h1><%=request.getParameter("bookName")%></h1>
    <form action="controller/updateController.jsp">
      <input type="hidden" name="id" value="<%=request.getParameter("id")%>" />
      <label for="bookName">Change Book Name: </label>
      <input id="bookName" type="text" name="bookName" />
      <input type="submit" value="Update" />
    </form>
  </body>
</html>
