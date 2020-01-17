drop table if exists `like`;
drop table if exists video;
drop table if exists profile;

create table profile (
    profileId binary(16) not null,
    profileEmail varchar(128) not null,
    profileImage blob,
    profileDescription varchar(500) not null,
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
    videoName varchar(32) not null,
    videoDescription varchar(500) not null,
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
