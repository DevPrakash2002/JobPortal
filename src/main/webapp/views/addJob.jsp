<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Job Portal</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
h2 {
	font-size: 16px;
	margin-bottom: 5px;
}

p {
	font-size: 12px;
	margin: 0;
}
</style>
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

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h2 class="mb-3 text-center fs-3 font-weight-bold">Post a new
							Job</h2>
						<form:form action="handleForm" method="post" modelAttribute="jobPost">
							<div class="mb-1">
								<label for="postId" class="form-label">Post ID</label> <input
									type="text" class="form-control" id="postId" name="postId"
									required>
							</div>

							<div class="mb-1">
								<label for="postProfile" class="form-label">Post Profile</label>
								<input type="text" class="form-control" id="postProfile"
									name="postProfile" required>
							</div>

							<div class="mb-1">
								<label for="postDesc" class="form-label">Post
									Description</label>
								<textarea class="form-control" id="postDesc" name="postDesc"
									rows="2" required></textarea>
							</div>

							<div class="mb-1">
								<label for="reqExperience" class="form-label">Required
									Experience</label> <input type="number" class="form-control"
									id="reqExperience" name="reqExperience" required>
							</div>

							<div class="mb-2">
								<label for="postTechStack" class="form-label">Tech Stack</label>
								<select multiple class="form-select" id="postTechStack"
									name="postTechStack" required>
									<!-- Add options dynamically from your backend or provide static options -->
									<option value="Java">Java</option>
									<option value="JavaScript">JavaScript</option>
									<!-- Additional options -->
									<option value="Swift">Swift</option>
									<option value="TypeScript">TypeScript</option>
									<option value="Go">Go</option>
									<option value="Kotlin">Kotlin</option>
									<option value="Rust">Rust</option>
									<option value="PHP">PHP</option>
									<option value="HTML5">HTML5</option>
									<option value="CSS3">CSS3</option>
									<option value="GraphQL">GraphQL</option>
									<option value="Raspberry Pi">Raspberry Pi</option>
									<option value="Arduino">Arduino</option>
									<option value="IoT (Internet of Things)">IoT (Internet
										of Things)</option>
									<option value="Apache Kafka">Apache Kafka</option>
									<option value="Elasticsearch">Elasticsearch</option>
									<option value="Unity">Unity</option>
									<option value="Game Development">Game Development</option>
									<option value="Vue.js">Vue.js</option>
									<option value="Angular">Angular</option>
									<option value="React Native">React Native</option>
									<option value="Flutter">Flutter</option>
									<option value="Node.js">Node.js</option>
									<option value="Express.js">Express.js</option>
									<option value="Django">Django</option>
									<option value="Flask">Flask</option>
									<option value="Ruby on Rails">Ruby on Rails</option>
									<option value="Laravel">Laravel</option>
									<option value="TensorFlow">TensorFlow</option>
									<option value="PyTorch">PyTorch</option>
									<option value="Kubernetes">Kubernetes</option>
									<option value="Docker">Docker</option>
									<option value="Jenkins">Jenkins</option>
									<option value="AWS (Amazon Web Services)">AWS (Amazon
										Web Services)</option>
									<option value="Azure">Azure</option>
									<option value="Google Cloud">Google Cloud</option>
									<option value="DevOps">DevOps</option>
									<option value="Blockchain">Blockchain</option>
									<option value="Machine Learning">Machine Learning</option>
									<option value="Artificial Intelligence">Artificial
										Intelligence</option>
									<option value="Cybersecurity">Cybersecurity</option>
									<option
										value="CISSP (Certified Information Systems Security Professional)">CISSP
										(Certified Information Systems Security Professional)</option>
									<option value="CompTIA Security+">CompTIA Security+</option>
									<option value="Certified Ethical Hacker (CEH)">Certified
										Ethical Hacker (CEH)</option>
									<option value="Scrum">Scrum</option>
									<option value="Agile">Agile</option>
									<option value="Kanban">Kanban</option>
									<option value="GraphQL">GraphQL</option>
									<option value="Vue.js">Vue.js</option>
									<option value="Angular">Angular</option>
									<option value="React Native">React Native</option>
									<option value="Flutter">Flutter</option>
									<option value="Node.js">Node.js</option>
									<option value="Express.js">Express.js</option>
									<option value="Django">Django</option>
									<option value="Flask">Flask</option>
									<option value="Ruby on Rails">Ruby on Rails</option>
									<option value="Laravel">Laravel</option>
									<option value="TensorFlow">TensorFlow</option>
									<option value="PyTorch">PyTorch</option>
									<option value="Kubernetes">Kubernetes</option>
									<option value="Docker">Docker</option>
									<option value="Jenkins">Jenkins</option>
									<option value="AWS (Amazon Web Services)">AWS (Amazon
										Web Services)</option>
									<option value="Azure">Azure</option>
									<option value="Google Cloud">Google Cloud</option>
									<option value="DevOps">DevOps</option>
									<option value="Blockchain">Blockchain</option>
									<option value="Machine Learning">Machine Learning</option>
									<option value="Artificial Intelligence">Artificial
										Intelligence</option>
									<option value="Cybersecurity">Cybersecurity</option>
									<option
										value="CISSP (Certified Information Systems Security Professional)">CISSP
										(Certified Information Systems Security Professional)</option>
									<option value="CompTIA Security+">CompTIA Security+</option>
									<option value="Certified Ethical Hacker (CEH)">Certified
										Ethical Hacker (CEH)</option>
									<option value="Scrum">Scrum</option>
									<option value="Agile">Agile</option>
									<option value="Kanban">Kanban</option>
									<option value="GraphQL">GraphQL</option>
									<option value="Raspberry Pi">Raspberry Pi</option>
									<option value="Arduino">Arduino</option>
									<option value="IoT (Internet of Things)">IoT (Internet
										of Things)</option>
									<option value="Apache Kafka">Apache Kafka</option>
									<option value="Elasticsearch">Elasticsearch</option>
									<option value="Unity">Unity</option>
									<option value="Game Development">Game Development</option>
									<option value="Swift">Swift</option>
									<option value="TypeScript">TypeScript</option>
									<option value="Go">Go</option>
									<option value="Kotlin">Kotlin</option>
									<option value="Rust">Rust</option>
									<option value="PHP">PHP</option>
									<option value="HTML5">HTML5</option>
									<option value="CSS3">CSS3</option>
									<option value="GraphQL">GraphQL</option>
									<option value="Raspberry Pi">Raspberry Pi</option>
									<option value="Arduino">Arduino</option>
									<option value="IoT (Internet of Things)">IoT (Internet
										of Things)</option>
									<option value="Apache Kafka">Apache Kafka</option>
									<option value="Elasticsearch">Elasticsearch</option>
									<option value="Unity">Unity</option>
									<option value="Game Development">Game Development</option>


								</select>
							</div>

							<button type="submit" class="btn btn-primary btn-lg" onclick="location.href='handleForm'">Submit</button>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Add the Bootstrap JS and Popper.js scripts -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</html>