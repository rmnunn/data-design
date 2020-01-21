drop table if exists `like`;
drop table if exists video;
drop table if exists profile;

create table profile (
    profileId binary(16) not null,
    profileEmail varchar(128) not null,
    profileImage blob,
    profileDescription varchar(500),
    profileUsername varchar(32) not null,
    profileDateJoined date not null,
    unique(profileEmail),
    unique(profileUsername),
    index(profileEmail),
    index(profileUsername),
    primary key(profileId)
);

create table video (
    videoId binary(16) not null,
    videoProfileId binary(16) not null,
    videoLength time not null,
    videoName varchar(300) not null,
    videoDescription varchar(500),
    index(videoName),
    foreign key(videoProfileid) references profile(profileId),
    primary key(videoId)
);

create table `like` (
    likeProfileId binary(16) not null,
    likeVideoId binary(16) not null,
    likeDate date not null,
    foreign key (likeProfileId) references profile(profileId),
    foreign key (likeVideoId) references video(videoId),
    primary key (likeProfileId, likeVideoId)
);

INSERT INTO profile(profileId, profileEmail, profileImage, profileDescription, profileUsername, profileDateJoined) VALUES
(UNHEX("d3e1700e1b8a4e9d8d0d78a70ee1de9d"), "email@email.com", LOAD_FILE('jared.jpeg'), "I'm Jared Leto, yes, THE Jared Leto!", "IamTheBestJoker", NOW());

INSERT INTO video(videoId, videoProfileId, videoLength, videoName, videoDescription) VALUES
(UNHEX("4a60f75c12054659bcb7b5420b24792e"), UNHEX("d3e1700e1b8a4e9d8d0d78a70ee1de9d"), "00:05:32", "Jared Leto - Suicide Squad (2016)", "Jared Leto attempts to act in Suicide Squad");

INSERT INTO `like`(likeProfileId, likeVideoId, likeDate) VALUES
(UNHEX("d3e1700e1b8a4e9d8d0d78a70ee1de9d"), UNHEX("4a60f75c12054659bcb7b5420b24792e"), NOW());

