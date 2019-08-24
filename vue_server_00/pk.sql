SET NAMES UTF8;
DROP DATABASE IF EXISTS PK;
CREATE DATABASE PK CHARSET=UTF8;
USE PK;

CREATE TABLE pk_user(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(16),
    phone VARCHAR(16),
    email VARCHAR(32),
    img_url VARCHAR(128), 
);


-- 菜
CREATE TABLE cai(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    cname VARCHAR(32),
    proDraw VARCHAR(128),
    video VARCHAR(128),
    stepPic_1 VARCHAR(128),
    stepArt_1 VARCHAR(128),
    stepPic_2 VARCHAR(128),
    stepArt_2 VARCHAR(128),
    stepPic_3 VARCHAR(128),
    stepArt_3 VARCHAR(128),
    stepPic_4 VARCHAR(128),
    stepArt_4 VARCHAR(128),
    stepPic_5 VARCHAR(128),
    stepArt_5 VARCHAR(128),
    stepPic_6 VARCHAR(128),
    stepArt_6 VARCHAR(128),
    stepPic_7 VARCHAR(128),
    stepArt_7 VARCHAR(128),
    stepPic_8 VARCHAR(128),
    stepArt_8 VARCHAR(128),
    desc VARCHAR(128),
    cate VARCHAR(32)
)



-- 插入数据
INSERT INTO pk_user VALUES(null,"tom",md5(123456),13788915532,842570482@qq.com,'01.jpg');
INSERT INTO pk_user VALUES(null,"jerry",md5(123456),1312341553,142740423@qq.com,'01.jpg');
INSERT INTO pk_user VALUES(null,"jack",md5(123456),14314412432,1654161581@qq.com,'01.jpg');