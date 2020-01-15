<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>ERD and Conceptual Model</title>
</head>
<body>
	<h1>ERD & Conceptual Model</h1>
	<h2>Conceptual Model</h2>
	<h3>Entities & Attributes</h3>
	<h4>YOUTUBE USER PROFILE</h4>
	<ul>
		<li>profileId (primary key)</li>
		<li>profileEmail</li>
		<li>profileLikedVideos</li>
		<li>profileViewHistory</li>
		<li>profileChannels</li>
	</ul>
	<h4>VIDEO</h4>
	<ul>
		<li>videoId (primary key)</li>
		<li>videoProfileId (foreign key)</li>
		<li>videoLength</li>
		<li>videoName</li>
		<li>videoDescription</li>
	</ul>
	<h4>LIKE</h4>
	<ul>
		<li>likeProfileId (foreign key)</li>
		<li>likeVideoId (foreign key)</li>
		<li>likeDate</li>
	</ul>
	<h3>Relations</h3>
		<ul>
			<li>One profile can watch many videos-(1 to n)</li>
			<li>One profile can watch many videos-(1 to n)</li>
		</ul>
	<h2>Entity Relationship Diagram</h2>
		<img src="LetoYoutubeERD.png">
	<a href="index.php">Back To Main Page</a>
</body>
</html>