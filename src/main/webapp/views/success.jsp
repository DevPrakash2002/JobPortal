<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.JobPortal.models.JobPost" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Post Details</title>
    <!-- Add Bootstrap CSS link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        .card {
            border: 2px solid #343a40; /* Dark border color */
            background-color: #f8f9fa; /* Light background color */
            margin-bottom: 20px;
        }
        
        .bg-clr{
        background-color:#f1faee;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="style.css">
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

<%
    JobPost jobPost = (JobPost) request.getAttribute("jobPost");
%>

<div class="container mt-5">
    <h2 class="mb-4 text-center font-weight-bold">Job Post Details</h2>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card border-dark bg-dark text-white">
                <div class="card-body">
                    <h5 class="card-title">${jobPost.postProfile}</h5>
                    <p class="card-text">
                        <strong>Job-Id:</strong>
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
                            <c:forEach var="tech" items="${jobPost.postTechStack}">
                                <li>${tech}</li>
                            </c:forEach>
                        </ul>
                    </p>
                </div>
                <div class="card-footer">
                    <!-- Optional footer content -->
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</html>
