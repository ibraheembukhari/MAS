<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>



<title>New Item</title>

</head>

<body>
	<br>
	<br>
	<div class="container">
		<form action="itemList" method="post" class="table table-bordered">
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Name</label>
				<div class="col-sm-3 ">
					<input type="text" class="form-control "
						name="proName" id="name3" placeholder="Product Name">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Item Code</label>
				<div class="col-sm-3">
					<input type="number" class="form-control" name="proCode"
						id="itemcode3" step="1" placeholder="Item Code">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Unit</label>
				<div class="col-sm-3">
					<select class="form-control" name="things">
						<option selected disabled>Select an Option</option>
						<option value="Piece">Piece</option>
						<option value="Box">Box</option>
					</select>
				</div>
				<div class="col-md-1" align="right">
					<button type="button" class="btn btn-success btn-md" data-toggle="modal" data-target="#items"><span class="glyphicon glyphicon-plus"	
                   > New Unit</span></button>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Description</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="proDesc"
						id="description3" placeholder="Description">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Minimum Stock</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="miniStock"
						id="ministock3" placeholder="Minimum Stock">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Sub Account</label>
				<div class="col-sm-3">
					<select class="form-control" name="subAcc">
						<option selected disabled>Select an Option</option>
						<option>Food Items</option>
						<option>Garments</option>
					</select>
				</div>
			</div>

			<table class="table table-bordered">
				<thead>
					<tr>
						<th class="colspan-2">Sale Information</th>
						<th class="colspan-2"></th>
						<th class="colspan-2">Purchase Information</th>
						<th class="colspan-2"></th>

					</tr>
				</thead>

				<tbody>
					<tr>
						<td>Sales Price</td>
						<td class=""><input class=" form-control colspan-2"
							type="text" id="txt1" placeholder="Sale Price"></td>
						<td>Purchase Price</td>
						<td class=""><input class="form-control colspan-2"
							type="text" id="txt2" placeholder="Purchase Price"></td>

					</tr>
					<tr>
						<td>Tax Rate</td>
						<td class="select"><select class="form-control">
								<option value="Output Standard Rated : 0">Output
									Standard Rated : 0</option>
								<option value="Output Zero Rated : 5%">Output Zero
									Rated : 5%</option>
								<option value="Output Exempted : Exempted">Output
									Exempted : Exempted</option>
						</select></td>
						<td>Tax Rate</td>
						<td class="select"><select class="form-control">
								<option value="Input Standard Rated : 0">Input Standard
									Rated : 0</option>
								<option value="Input Zero Rate : 5%">Input Zero Rated :
									5%</option>
								<option value="Input Exempted : Exempted">Input
									Exempted : Exempted</option>
						</select></td>
					</tr>
					<tr>
						<td>Account</td>
						<td class=""><input class="form-control colspan-2"
							type="text" id="txt5" placeholder="Autogenerated"></td>
						<td>Account</td>
						<td class=""><input class="form-control colspan-2"
							type="text" id="txt6" placeholder="Autogenerated"></td>
					</tr>
				</tbody>
			</table>
			<div class="row">
				<div class="col-sm-2 ">
					<input type="submit" class="btn btn-info btn-md btn-block " value="Save">
				</div>
				
				<div class="col-sm-2 ">
					<input type="submit" class="btn btn-info btn-md btn-block " value="Edit">
				</div>
				
				<div class="col-sm-2 ">
					<input type="submit" class="btn btn-info btn-md btn-block " value="Save and New">
				</div>
				
				<div class="col-sm-2 ">
					<input type="submit" class="btn btn-info btn-md btn-block " value="Upload List">
				</div>
				
				<div class="col-sm-2 ">
					<input type="submit" class="btn btn-info btn-md btn-block " value="Bar Code">
				</div>
				
				<div class="col-sm-2 ">
					<input type="submit" class="btn btn-info btn-md btn-block " value="Cancel">
				</div>
			</div>












		</form>
	</div>

	<div class="container">
		<div class="row">
			<div class="modal fade" id="items" role="dialog">
				<div class="modal-dialog modal-sm">
					<div class="modal-content" style="background-color: #E6E6FA;">
						<div class="modal-header">
							<h4 class="modal-title" align="center">Create New Measuring Unit</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>

						</div>
						<hr>
						<div class="modal-body">
							<div class="container">
								<div class="row">
									<div class="col-md-12">
										<form method="post" action="addunits">
											<div class="row">
												<div class="col-md-3">
													<div class="form-group">
														<b> <label>New Unit:</label></b> <input id="name"
															name="newUnit" type="text" placeholder="Enter New Unit"
															class="form-control input-md">
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-md-3">
													<b> <label class="control-label" for="unit">Add
															New Code</label></b> <input id="newCode" name="newCode" type="text"
														placeholder="Enter New Code" class="form-control input-md">
												</div>
											</div>
										</form>

									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
						<input type="submit" class="btn btn-primary"
															value="Save">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Cancel</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>