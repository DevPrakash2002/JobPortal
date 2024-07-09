<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.JobPortal.models.JobPost" %>
<%@ page import="com.example.JobPortal.Repo.JobRepo" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    		<a class="navbar-brand" href="home"> Job Portal</a>
    		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    			<span class="navbar-toggler-icon"></span>
    		</button>

    		<div class="collapse navbar-collapse" id="navbarSupportedContent">
    			<ul class="navbar-nav mr-auto">
    				<li class="nav-item active">
    					<a class="nav-link" href="home">Home</a>
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

<ab:set var="jobPosts" value="${jobPosts}" />

<div class="container mt-5">
    <h2 class="mb-4 text-center font-weight-bold">Job Post List</h2>

    <div class="row row-cols-2">
        <ab:forEach var="jobPost" items="${jobPosts}">
            <div class="col mb-4">
                <div class="card border-dark bg-dark text-white">
                    <div class="card-body">
                        <h5 class="card-title">${jobPost.postProfile}</h5>
                        <p class="card-text">
                            <strong>Job-Id: </strong>
                                ${jobPost.postId}
                        </p>
                        <p class="card-text">
                            <strong>Description:</strong>
                                ${jobPost.postDesc}
                        </p>
                        <p class="card-text">
                            <strong>Experience Required:</strong>
                                ${jobPost.reqExperience} years
                        </p>
                        <p class="card-text">
                            <strong>Tech Stack Required:</strong>
                        <ul>
                            <ab:forEach var="tech" items="${jobPost.postTechStack}">
                                <li>${tech}</li>
                            </ab:forEach>
                        </ul>
                        </p>
                    </div>
                    <div class="card-footer">
                        <button class="btn btn-primary" onclick="location.href='editJob?id=${jobPost.postId}'">Edit</button>
                        <button class="btn btn-danger" onclick="location.href='deleteJob?id=${jobPost.postId}'">Delete</button>
                    </div>
                </div>
            </div>
        </ab:forEach>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
