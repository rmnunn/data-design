INSERT INTO profile(profileId, profileEmail, profileImage, profileDescription, profileUsername, profileDateJoined) VALUES
(UNHEX('d3e1700e1b8a4e9d8d0d78a70ee1de9d'), 'email@email.com', LOAD_FILE('C:\Users\Reece\Desktop\bootcamp\git\data-design'), 'I\'m Jared Leto, yes, THE Jared Leto!', 'IamTheBestJoker', NOW());

INSERT INTO video(videoId, videoProfileId, videoLength, videoName, videoDescription) VALUES
(UNHEX('4a60f75c12054659bcb7b5420b24792e'), UNHEX('d3e1700e1b8a4e9d8d0d78a70ee1de9d'), '00:05:32', 'Jared Leto - Suicide Squad (2016)', 'Jared Leto attempts to act in Suicide Squad');

INSERT INTO `like`(likeProfileId, likeVideoId, likeDate) VALUES
(UNHEX('d3e1700e1b8a4e9d8d0d78a70ee1de9d'), UNHEX('4a60f75c12054659bcb7b5420b24792e'), NOW());

UPDATE profile SET profileDescription = 'I\'m a way better actor than Jaoquin Phoenix! That new joker movie sucks!' WHERE profileId = UNHEX('d3e1700e1b8a4e9d8d0d78a70ee1de9d');

DELETE FROM `like` WHERE likeProfileId = UNHEX('d3e1700e1b8a4e9d8d0d78a70ee1de9d');

SELECT videoId, videoLength, videoName, videoDescription from video WHERE videoProfileId = UNHEX('d3e1700e1b8a4e9d8d0d78a70ee1de9d');

SELECT video.videoName, profile.profileId FROM video INNER JOIN profile ON video.videoProfileId = profile.profileId where video.videoName = 'Jared Leto - Suicide Squad (2016)';

/*
SELECT likeTweetId, likeProfileId from `like` where likeTweetId = UNHEX("hexHere")
 */