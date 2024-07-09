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
    <title>Delete Job Post</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="home">Job Portal</a>
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

<div class="container mt-5">
    <h2 class="mb-4 text-center font-weight-bold">Delete Job Post</h2>

    <%
        int jobId = Integer.parseInt(request.getParameter("id"));
        JobRepo jobRepo = new JobRepo();
        JobPost jobPost = jobRepo.getJobPostById(jobId);
        if (jobPost != null) {
            jobRepo.deleteJobPost(jobId);
            out.println("<p class='text-success'>Job post deleted successfully!</p>");
        } else {
            out.println("<p class='text-danger'>Job post not found!</p>");
        }
    %>

    <p><a href="viewalljobs" class="btn btn-primary">Back to Job List</a></p>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>