<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD NEW VAT</title>

<link rel="stylesheet" href="css/Sidebar.css" type="text/css">

<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/css/bootstrap-slider.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/bootstrap-slider.min.js"></script>

</head>
<body>
	<h1 style="text-align: center">NewVat Taxtation</h1>
	<br>
	<br>
	<div class="container">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="colspan-2">Create New VAT</th>
					<th class="colspan-2"></th>

				</tr>
			</thead>

			<tbody>
				<tr>
					<td>Type</td>
					<td><input class="radio-inline" type="radio" name="r1" checked>Input
						VAT <input class=" radio-inline" type="radio" name="r1">Output
						VAT</td>
				</tr>
				<tr>
					<td>Name</td>
					<td class="select"><select class="form-control input-sm">
							<option value="Zero Rated VAT">Zero Rated VAT</option>
							<option value="Standard Rated VAT">Standard Rated VAT</option>
							<option value=" Exempted VAT">Exempted VAT</option>
					</select></td>

				</tr>
				<tr>
					<td>Tax Rate</td>
					<td class="select"><select class="form-control input-sm">
							<option value="IPZ">IPZ</option>
							<option value="IPS">IPS</option>
							<option value="IPE">IPE</option>
							<option value="OPZ">OPZ</option>
							<option value="OPS">OPS</option>
							<option value="OPE">OPE</option>
					</select></td>
				</tr>
				<tr>
					<td>Rate</td>
					<td class="">
						<div class="slider-wrapper green">
							<input class="input-range" data-slider-id='Slider' type="text"
								data-slider-min="0" data-slider-tooltip="always"
								data-slider-max="100" data-slider-step="1"
								data-slider-value="25" data-slider-enabled="false" /> <input
								id="Slider-enabled" type="checkbox" /> Enabled
						</div>
				</tr>
				<tr>
					<td>Description</td>
					<td><div class="col-sm-12">
							<input type="text" class="form-control" name="proDesc"
								id="description1" placeholder="Description">
						</div></td>
				</tr>

			</tbody>
		</table>
		<div class="row">
			<div class="col-sm-4 ">
				<input type="submit" class="btn btn-info btn-md btn-block "
					value="Save">
			</div>

			<div class="col-sm-4 ">
				<input type="submit" class="btn btn-info btn-md btn-block "
					value="Edit">
			</div>

			<div class="col-sm-4 ">
				<input type="submit" class="btn btn-info btn-md btn-block "
					value="Cancel">
			</div>
		</div>
	</div>
	<script type="text/javascript">
		(function($) {
			$(document)
					.ready(
							function() {
								$('.input-range')
										.each(
												function() {
													var value = $(this)
															.attr(
																	'data-slider-value');
													var separator = value
															.indexOf(',');
													if (separator !== -1) {
														value = value
																.split(',');
														value
																.forEach(function(
																		item,
																		i, arr) {
																	arr[i] = parseFloat(item);
																});
													} else {
														value = parseFloat(value);
													}
													$(this)
															.slider(
																	{
																		formatter : function(
																				value) {
																			console
																					.log(value);
																			return '$'
																					+ value;
																		},
																		min : parseFloat($(
																				this)
																				.attr(
																						'data-slider-min')),
																		max : parseFloat($(
																				this)
																				.attr(
																						'data-slider-max')),
																		range : $(
																				this)
																				.attr(
																						'data-slider-range'),
																		value : value,
																		tooltip_split : $(
																				this)
																				.attr(
																						'data-slider-tooltip_split'),
																		tooltip : $(
																				this)
																				.attr(
																						'data-slider-tooltip')
																	});
												});

							});
		})(jQuery);
	</script>

	<script type="text/javascript">
		var slider1 = new Slider("#Slider");

		$("#Slider-enabled").click(function() {
			if (this.checked) {
				slider1.enable();
			} else {
				slider1.disable();
			}
		});
	</script>
</body>
</html>