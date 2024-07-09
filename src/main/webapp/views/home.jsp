<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Job Portal</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Job Portal</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="viewalljobs">All Jobs</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="contactus">Contact</a>
				</li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<h1 class="display-4">Welcome to Job Portal</h1>
		<p class="lead">Find your dream job here!</p>
		<div class="row">
			<div class="col-md-6">
				<button type="button" class="btn btn-primary btn-lg" onclick="location.href='viewalljobs'">View All Jobs</button>
			</div>
			<div class="col-md-6">
				<button type="button" class="btn btn-success btn-lg" onclick="location.href='addJob'">Add Job</button>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>