<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.swing.JOptionPane"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MAS Accounting Software</title>
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.css">

</head>
<body>
<jsp:include page="Dashboard.jsp" />
	<div class="container">
           <div class="row" style="margin-top:70px">
           <div class="col-md-3"></div>
                <div class="col-md-7" align="center">
                   <h1>ITEMS</h1>
                   
                   
                 </div>
                 <div class="col-md-2" align="right">
                   <button type="button" class="btn btn-success btn-md" data-toggle="modal" data-target="#items"><span class="glyphicon glyphicon-plus"	
                   > New Items</span></button>
                 </div>
           </div>
         
           
           <div class="row" style="margin-top:40px">
           <div class="col-md-3"></div>
				<div class="col-md-9" >
<%
String dbURL = "jdbc:mysql://198.38.82.203:3306/admin99_portal?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=Europe/Moscow";
String dbUser = "admin99_admin";
String dbPass = "admin";
%>
	<table class="table table-hover" id="example">
    <thead>
      <tr class="table-success">
        <th>Item Code</th>
        <th>Name</th>
        <th>Description</th>
		<th>Type</th>
		<th>Rate</th>
		<th>Stock On Hand</th>
		<th>Measuring Unit</th>
      </tr>
    </thead>
    <tbody>
      
      <%
      try {
			Connection connection = null; 
			 
	       Class.forName("com.mysql.jdbc.Driver").newInstance(); 
	        connection = DriverManager.getConnection(dbURL,dbUser,dbPass);
	     //   if(!connection.isClosed())
	       // {
	      //  JOptionPane.showMessageDialog(null,"Successfully Connected"+" with Database");
	    //}
	        
	        String sql = "SELECT * FROM items";
	        PreparedStatement statement = connection.prepareStatement(sql);
	        ResultSet resultSet = null;
	        resultSet = statement.executeQuery(sql);
	        while(resultSet.next()){
	        	%>
      <tr>

<td><%=resultSet.getString("item_code") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("type") %></td>
<td><%=resultSet.getString("srate") %></td>
<td><%=resultSet.getString("stock") %></td>
<td><%=resultSet.getString("prate") %></td>

</tr>
      
    <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
    </tbody>
  </table>
				
				</div>  
				</div>    
				<div class="container">     
          <div class="row">
          <div class="modal fade" id="items" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content" style="background-color:#E6E6FA;">
        <div class="modal-header">
        <h4 class="modal-title" align="center">New Item</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
         
        </div> <hr>
        <div class="modal-body">
         
        <div class="container">
        <div class="row">
        <div class="col-md-12">
          <form  method="post" action="additems" class="form-horizontal">
          <div class="row">
          <div class="col-md-5">
          <div class="form-group">
         <b> <label>Name:</label></b>
          <input id="name" name="name" type="text" placeholder="Enter Item Name" class="form-control input-md" >
          </div>
          </div>
          <div class="col-md-7">
        <b>  <label class="col-md-5 control-label" for="radios">Item Type</label></b>
  
      <input type="radio" name="type"  value="Goods" checked="checked">
      Goods
    

      <input type="radio" name="type"  value="Services">
      Services
    
          </div>
          </div>
           <div class="row">
          <div class="col-md-5">
       <b>   <label class="control-label" for="unit">Measuring Unit</label></b> 
  			<input id="unit" name="unit" type="text" placeholder="Enter Measuring Unit" class="form-control input-md" >
          </div>
          <div class="col-md-7">
          <div class="form-group">
 		<b> <label class="control-label" for="description">Description</label></b>
   		 <textarea class="form-control" id="description" name="description">Enter Item Description</textarea>
          </div>
          </div>
          </div>
           <div class="row">
          <div class="col-md-5">
          <div class="form-group">
  		<b><label class="control-label" for="rate">Sales Rate</label> </b> 
		<input id="rate" name="rate" type="text" placeholder="Enter Rate For Sale" class="form-control input-md" >
    
 		 </div>
          </div>
          <div class="col-md-7">
          <div class="form-group">
  		<b><label class="col-md-4 control-label" for="rate">Purchase Rate</label>  </b>
		<input id="prate" name="prate" type="text" placeholder="Enter Rate For Purchase" class="form-control input-md" >
    
 		 </div>
          </div>
          </div>
           <div class="row">
          <div class="col-md-12">
          <div class="form-group">
  		<b><label class="control-label" for="stock">Stock On Hand</label> </b> 
		<input id="stock" name="stock" type="text" placeholder="Enter Quantity" class="form-control input-md" >
    
 		 </div>
          </div>
          
          </div>
           <div class="row">
           <div class="col-md-4"></div>
          <div class="col-md-4" style="margin-top:30px;">
           <input type="submit" class="btn btn-primary btn-block" value="Submit">
          </div>
          
          </div>
			</form>
			</div>
			</div>
</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
          
          </div>
           </div>
            <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
 <script>

$(document).ready(function() {
	//alert("em here");

    var table = $('#example').DataTable({
    	//"paging":   false,
        "ordering": true,
       // "info":     false
    });
      
    $('#example tbody').on('click', 'tr', function () {
        var data = table.row( this ).data();
      //  alert( 'You clicked on '+data[0]+'\'s row' );
       // "ordering": false
    } );
    
    	 
    	
} );
</script>
</body>
</html>