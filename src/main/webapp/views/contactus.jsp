<!-- contactus.jsp -->
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
	<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="home">Job Portal</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item">
					<a class="nav-link" href="home">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="viewalljobs">All Jobs</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="contactus">Contact</a>
				</li>
			</ul>
		</div>
	</nav>

	<!-- Contact Us Form -->
	<div class="container">
		<h1 class="display-4">Contact Us</h1>
		<p class="lead">Get in touch with us for any queries or feedback.</p>
		<form action="contactus" method="post">
			<div class="form-group">
				<label for="name">Name:</label>
				<input type="text" class="form-control" id="name" name="name" required>
			</div>
			<div class="form-group">
				<label for="email">Email:</label>
				<input type="email" class="form-control" id="email" name="email" required>
			</div>
			<div class="form-group">
				<label for="message">Message:</label>
				<textarea class="form-control" id="message" name="message" required></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Send</button>
		</form>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>