<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<title>Weather Forecast Utility</title>
</head>
<body>
	<div class="container">
		<h1>Weather Forecast Utility</h1>
		<c:if test="${ forcast !=null }">
			<div class="alert alert-success" role="alert">${forcast}</div>
		</c:if>
		<form method="POST" action="/forcastWeather"
			modelAttribute="weatherData">
			<div class="row">
				<div class="col">
					<label for="temperature">Temperature (?C)</label>
					<form:input type="number" path="weatherData.temperature"
						id="temperature" />
					<form:errors path="temperature" style="color:red" />
				</div>

				<div class="col">
					<label for="humidity">Humidity</label>
					<form:input type="range" path="weatherData.humidity" id="humidity"
						min="0" max="100" value="50" onchange="showValue(this.value)" />
					<span id="range">50</span>
					<script type="text/javascript">
						function showValue(newValue) {
							document.getElementById("range").innerHTML = newValue;
						}
					</script>
					<form:errors path="humidity" style="color:red" />
				</div>


				<div class="col">
					<label for="precipitation">Precipitation</label><br>
					<form:radiobutton path="weatherData.precipitation" value="true" />
					Yes<br>
					<form:radiobutton path="weatherData.precipitation" value="false" />
					No
					<form:errors path="precipitation" style="color:red" />
				</div>
			</div>
			<div class="row">
				<div class="col">
					<input type="submit" class="btn btn-primary" value="Forcast">
				</div>
			</div>
		</form>
	</div>
	<!-- Optional JavaScript; choose one of the two! -->
	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-fXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>

	<!-- Option 2: jQuery, Popper.js, and Bootstrap JS
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
	-->
</body>
</html>
