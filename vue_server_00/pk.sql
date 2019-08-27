SET NAMES UTF8;
DROP DATABASE IF EXISTS P_Kitchen;
CREATE DATABASE P_Kitchen CHARSET=UTF8;
USE P_Kitchen;

-- 登陆列表
CREATE TABLE pk_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32)
);

-- 插入数据
INSERT INTO pk_login VALUES(null,'tom',md5('123'));
INSERT INTO pk_login VALUES(null,'jerry',md5('123'));

-- 商品列表
CREATE TABLE pk_product(
    lid INT PRIMARY KEY AUTO_INCREMENT,
    lname VARCHAR(32),          #商品名称
    price decimal(10,2),        #价格
    details	varchar(1024),      #产品详细说明
    shelf_time bigint(20),      #上架时间
    sold_count int(11),         #已售出的数量
    is_onsale tinyint(1),       #是否促销中
    img_url VARCHAR(255)
);

-- 插入数据
INSERT INTO pk_product VALUES(null,'做好一道菜',4300.00,'原五星酒店大厨 25年掌勺心得 倾囊以授！新浪美食博客17 000 000点击量 人气见证！每道菜，每个步骤，都有诀窍！不只学会100道经典家常菜，还有厨艺飞跃！',150123456789,2968,1,'02.jpg');
INSERT INTO pk_product VALUES(null,'舌尖上的中国',4000.00,'中华饮食文化源远流长，烹饪历史悠久，制作工艺精湛，菜系流派纷呈。一直以来，中国都以“美食大国”享誉世界，各种美味佳肴不仅遍布中国各地，更是风行海外。林语堂先生说：“吃在中国无所不在，无往不通。”中国人的吃，不仅是满足于胃，而且要满足于嘴，甚至还要使视觉、嗅觉皆获得满足。',150123456789,9999,1,'03.jpg');
INSERT INTO pk_product VALUES(null,'有滋有味的素食',4500.00,'有人觉得素食味道太平淡，其实，素食也诱人。素食的材料不只是青菜萝卜，它可以很丰富。素食也有酸甜苦辣，素食也有煎炒烹炸。细心品味素食的味道，就像品味生活的味道一样，总会找到我们和我们所爱的人共同期待的幸福滋味。',150123456789,1768,1,'04.jpg');
INSERT INTO pk_product VALUES(null,'享瘦轻食',3900.00,'轻食等同于轻断食、素食？低热量高饱腹三餐如何搭配？瘦身期如何“善待”自己的心和胃?鱼菲的这本轻食食谱，正是一种美好的指引，带你步入有滋有味的轻食生活。',150123456789,978,1,'05.jpg');
INSERT INTO pk_product VALUES(null,'中式面点大全',3900.00,'出门在外，总是要委屈自己的胃。可是回到家，就会得到珍重的对待。凉菜清爽的口感、小炒家常的味道、炖煮时“咕噜咕噜“冒泡的声音……幸福油然而生。',150123456789,1254,1,'06.jpg');
INSERT INTO pk_product VALUES(null,'烧腊大王',5800.00,'6大种类，8大卤水，40余种香料、酱汁，800种烧腊案例，你就是烧腊大王！',150123456789,1715,1,'07.jpg');
INSERT INTO pk_product VALUES(null,'四季家常菜',4500.00,'现在的许多家庭尤其是80,80后小家庭，都因为生活节奏的加快而在吃的上面瞎凑合，健康也因此大打折扣。本书针对怎么吃，吃什么的问题，将家常菜与养生相结合，并且根据四季气候特点和每个季节的身体变化，即使是初学者，也可以轻松上手，吃到美味的，健康的家常菜',150123456789,2968,1,'08.jpg');

-- 购物车（商品编号、价格、名称）
CREATE TABLE pk_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lid INT,
  uid INT,
  count INT,
  lname VARCHAR(255),
  price DECIMAL(10,2),
  img_url VARCHAR(255)
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
    stepArt_8 VARCHAR(128)
);

-- 用户名表
CREATE TABLE pk_user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(16),
    phone VARCHAR(16),
    email VARCHAR(32),
    img_url VARCHAR(255), 
    avatar VARCHAR(128),        #头像图片路径
    user_name VARCHAR(32),      #用户名
    gender INT                  #性别
);


-- 插入数据
INSERT INTO pk_user VALUES(null,"tom",md5('123'),13788915532,"842570482@qq.com",'01.jpg',"img/avatar/default.png","cjw",1);
INSERT INTO pk_user VALUES(null,"jerry",md5('123'),1312341553,"142740423@qq.com",'02.jpg',"img/avatar/default.png","lyx",0);
INSERT INTO pk_user VALUES(null,"jack",md5('123'),14314412432,"1654161581@qq.com",'01.jpg',"img/avatar/default.png","lyy",1);