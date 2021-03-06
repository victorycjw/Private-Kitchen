SET NAMES UTF8;
DROP DATABASE IF EXISTS P_Kitchen;
CREATE DATABASE P_Kitchen CHARSET=UTF8;
USE P_Kitchen;

-- 登陆列表
-- 用户名表
CREATE TABLE pk_user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(50),
    upwd VARCHAR(32),
    phone VARCHAR(16),
    email VARCHAR(32),
    avatar VARCHAR(128),        #头像图片路径
    username VARCHAR(32),      #用户名
    gender INT                  #性别
);

-- 插入数据
INSERT INTO pk_user VALUES(null,"tom",md5('123'),13788915532,"842570482@qq.com","img/avatar/default.png","cjw",1);
INSERT INTO pk_user VALUES(null,"jerry",md5('123'),13123415532,"142740423@qq.com","img/avatar/default.png","lyx",0);
INSERT INTO pk_user VALUES(null,"jack",md5('123'),14314412432,"1654161581@qq.com","img/avatar/default.png","lyy",1);

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
INSERT INTO pk_product VALUES(null,'做好一道菜',4300.00,'原五星酒店大厨 25年掌勺心得 倾囊以授！新浪美食博客17 000 000点击量 人气见证！每道菜，每个步骤，都有诀窍！不只学会100道经典家常菜，还有厨艺飞跃！',150123456789,2968,1,'img/cart/02.jpg');
INSERT INTO pk_product VALUES(null,'舌尖上的中国',4000.00,'中华饮食文化源远流长，烹饪历史悠久，制作工艺精湛，菜系流派纷呈。一直以来，中国都以“美食大国”享誉世界，各种美味佳肴不仅遍布中国各地，更是风行海外。林语堂先生说：“吃在中国无所不在，无往不通。”中国人的吃，不仅是满足于胃，而且要满足于嘴，甚至还要使视觉、嗅觉皆获得满足。',150123456789,9999,1,'img/cart/03.jpg');
INSERT INTO pk_product VALUES(null,'有滋有味的素食',4500.00,'有人觉得素食味道太平淡，其实，素食也诱人。素食的材料不只是青菜萝卜，它可以很丰富。素食也有酸甜苦辣，素食也有煎炒烹炸。细心品味素食的味道，就像品味生活的味道一样，总会找到我们和我们所爱的人共同期待的幸福滋味。',150123456789,1768,1,'img/cart/04.jpg');
INSERT INTO pk_product VALUES(null,'享瘦轻食',3900.00,'轻食等同于轻断食、素食？低热量高饱腹三餐如何搭配？瘦身期如何“善待”自己的心和胃?鱼菲的这本轻食食谱，正是一种美好的指引，带你步入有滋有味的轻食生活。',150123456789,978,1,'img/cart/05.jpg');
INSERT INTO pk_product VALUES(null,'中式面点大全',3900.00,'出门在外，总是要委屈自己的胃。可是回到家，就会得到珍重的对待。凉菜清爽的口感、小炒家常的味道、炖煮时“咕噜咕噜“冒泡的声音……幸福油然而生。',150123456789,1254,1,'img/cart/06.jpg');
INSERT INTO pk_product VALUES(null,'烧腊大王',5800.00,'6大种类，8大卤水，40余种香料、酱汁，800种烧腊案例，你就是烧腊大王！',150123456789,1715,1,'img/cart/07.jpg');
INSERT INTO pk_product VALUES(null,'四季家常菜',4500.00,'现在的许多家庭尤其是80,80后小家庭，都因为生活节奏的加快而在吃的上面瞎凑合，健康也因此大打折扣。本书针对怎么吃，吃什么的问题，将家常菜与养生相结合，并且根据四季气候特点和每个季节的身体变化，即使是初学者，也可以轻松上手，吃到美味的，健康的家常菜',150123456789,1248,1,'img/cart/08.jpg');
INSERT INTO pk_product VALUES(null,'四季养生食补食疗大全',3900.00,'如何远离亚健康，肥胖症，糖尿病，心血管疾病，甲状腺疾病，癌症？如何获得更健康的皮肤和身材？母婴健康，女性健康的关键在哪里？都可在本书找到答案',150123456789,1831,1,'img/cart/09.jpg');
INSERT INTO pk_product VALUES(null,'菜谱书家常菜谱大全',4000.00,'本书从汤煲不同的功效出发，别具匠心地为我们介绍了各种功效的养生汤，具体分为强身健体汤、益气补血汤、养心润肺汤、保肝护肾汤、美容养颜汤、日常滋补汤六个部分，用大量的精美好汤，多方面呈现出汤煲的各式功效。并且，在讲解汤煲的制作过程中，不仅配有详细的步骤图，还分享了汤煲制作小提示，让养生变得更加简单！',150123456789,1737,1,'img/cart/10.jpg');
INSERT INTO pk_product VALUES(null,'烧烤,一次成功',5400.00,'如果你也喜欢自己动手制作美味烧烤，那就选择这本书吧！你肯定想知道怎么才能做出地道独特的烧烤酱料；怎样才能烤出外焦里嫩、滋味十足的美味；搭配怎样的美酒、饮料才能让烧烤更加独特。',150123456789,2156,1,'img/cart/11.jpg');
INSERT INTO pk_product VALUES(null,'正宗绝色川菜',3900.00,'火爆大江南北的麻辣川菜，拥有众多老饕级“铁粉”。麻、辣、鲜、香，是评价川菜地道与否的头号标准。想感受川菜里的麻辣传奇?那就赶快看《正宗绝色川菜(全新升级版)》吧!本书是超级畅销食谱《正宗绝色川菜》的全新升级版，既保留了原版“美图+美食+超详细烹饪步骤”的编排特色，又在原有的基础上更新了近50％的菜式，让您随时体验麻辣鲜香的感觉。   郑伟乾制作的《正宗绝色川菜》在内容编排上*常重视读者朋友的阅读体验，虽按冷热菜方式收录菜谱，却又在文末附上味型索引，家常昧、麻辣味、酸辣味……一一囊括。按图索骥，想学什么昧型的菜式，随手翻来。',150123456789,1653,1,'img/cart/12.jpg');
INSERT INTO pk_product VALUES(null,'中国烹饪技法辞典',6500.00,'本辞典包括烹饪一般，营养基础，烹调技法，植物性食材，动物性食材，面点、小吃，名菜佳肴，汤、羹、冷饮药饮、药膳，美酒、香茗，*名酒店餐馆，附录等12部分，5320条词目。依词目的性质分类排列。为便于查阅，正文后附有“笔画索引”。',150123456789,1621,1,'img/cart/13.jpg');
INSERT INTO pk_product VALUES(null,'烤箱烤香',5000.00,'省时无油烟，打开烤箱，就像打开一扇新的美食之窗。无论你是从零开始学习，还是挑战烹饪技能高峰，进度由你自由掌控。从新手下厨烤箱菜、嘎嘣脆的小食到进阶版宴客菜，直到做出让亲朋好友欢呼的蛋糕、面包。有了这本食谱的指引，烤箱就能成为你探索美食路上的默契伙伴。',150123456789,1817,1,'img/cart/14.jpg');
INSERT INTO pk_product VALUES(null,'舌尖上的中国',4000.00,'新手下厨总会手忙脚乱？坨坨妈结合新手常见问题，多次亲测、仔细对比得出的黄金配方，一步一图，跟着做就行！烤箱懒人料理，食材常见，一次就能做成功，告别厨房的油腻和混乱，尽情享受诱人美味。',150123456789,1986,1,'img/cart/15.jpg');
INSERT INTO pk_product VALUES(null,'元气蔬菜汤的196种做法',4500.00,'196种方法，滋润你的家人，呵护你的健康，196中汤，让你感受汤品的魅力，体验汤品的精华，尽在《元气蔬菜汤的196种做法》',150123456789,1766,1,'img/cart/16.jpg');
INSERT INTO pk_product VALUES(null,'303道最好吃的海鲜菜',4500.00,'这里有鱼类的选购，保鲜等烹饪技巧，还会告诉你虾如何选购，你更能在这里找到更多海鲜的处理技巧，让你时刻体验大海的广阔无垠，吹着夏威夷的海风，吃着新鲜的鱼虾，这是一种境界，更是一种精神',150123456789,2031,1,'img/cart/17.jpg');
INSERT INTO pk_product VALUES(null,'本味家常菜·凉拌、小炒、汤煲3688例',3700.00,'选菜经典，做法简单：精选易购易得的食材、调料，使用简单易学的烹饪方法，做出与往常不一样的美味。美食故事，食材预处理：重点菜品有典故和传说。每种食材有读者*需要的拓展介绍：挑选、保存等，不易处理的食材还有预处理方法的介绍。按图索骥。',150123456789,1852,1,'img/cart/18.jpg');
INSERT INTO pk_product VALUES(null,'营养早餐一学就会',4700.00,'还在为早餐吃什么而发愁吗？还在为在外吃早餐的卫生而担忧吗？那么看看本书吧，手把手教你做营养又美味的早餐，不用花费太多的时间，就能收获健康的早餐和家庭的温馨。每天早晨给家里人露一手，做一份“强力”早餐，中西合璧，活力无限！',150123456789,1975,1,'img/cart/19.jpg');
INSERT INTO pk_product VALUES(null,'极简全蔬食',3900.00,'本书由美国责任医师协会*家推荐，人气公众号“素愫的厨房”出品，从一个专业主妇、专业厨师和专业营养师的角度，为我们精选了101道简单、便捷、美味、可执行、不重复的日常素食料理提供了一个非常明确、简单、可操作的指导。细读之，不但可以迅速学会，还可以举一反三，创造自己喜欢的食谱，同时收获美味、健康与身心的提升。',150123456789,2314,1,'img/cart/20.jpg');
INSERT INTO pk_product VALUES(null,'家常小炒一本就够',6200.00,'无论你选择哪种炒法，家常菜追求的是鲜香和健康，本书就是要手把手地教你学会制作健康美味的家常菜。每一道菜肴还附有小贴士及制作提示，涉及如何挑选新鲜食材、所选食材的功效、如何让菜品更美味等内容，还标明了菜品的口味、适宜人群和功效，让您可以快速检索出适合自己和家人的小炒来。更多精彩好书请点击这里：营养排毒家常菜275例家常肉菜一本就够*下饭的美味川菜绝味家常湘菜一本就够',150123456789,1897,1,'img/cart/21.jpg');
INSERT INTO pk_product VALUES(null,'铸铁珐琅锅的花样美食料理',5300.00,'用铸铁珐琅锅做出来的料理特别好吃。本书由日本6位人气料理达人携手打造130余款经典美味。家常菜、宴客菜、创意菜等各式菜肴；拌饭、盖饭、炒饭、蒸饭、寿司等花样饭料理；炖、炸、蒸、炒等烹调手法，只要一个锅子就能轻松搞定。STEP BY STEP 的料理步骤说明，让厨艺新手也能悠闲地端出拿手绝活料理。',150123456789,2112,1,'img/cart/22.jpg');
INSERT INTO pk_product VALUES(null,' 做面食轻松就上手',4000.00,'《做面食轻松就上手》是特别为一般大众设计的面食食谱，选材以面为原材料，搭配*市和传统菜市场就能购买到的当季食材，示范如何把简单的面料理成美味佳肴，且避免加工食品和化学添加物，达到身体健康的目的。《做面食轻松就上手》中中式面食的种类可以说是五花八门：柔软的子、扎实的馒头、皮薄馅多的馅饼、口味多变的饺子、香酥美味的煎饼、Q弹有劲的手工面条等等……还收录了西餐面食，有详细的步骤、图解和剖析，让大家一次就能轻松就学会所有你想要制作的面食和点心。',150123456789,1715,1,'img/cart/23.jpg');
INSERT INTO pk_product VALUES(null,'备孕怀孕营养餐315例',4800.00,'备孕怀孕营养餐315例，315道适宜孕产妇的营养食谱，精装锁线，优质纸张，为妈妈和宝宝的健康保驾护航，为了妈妈和宝宝贴心设计，还在等什么，快快订购吧',150123456789,1677,1,'img/cart/24.jpg');
INSERT INTO pk_product VALUES(null,'萨巴厨房.蒸炖煮一本全',3000.00,'本书根据食材的烹饪方式及常用锅具分为蒸、煮、炖、锅物四个章节。“蒸、炖、煮”均属于简单、健康的烹饪方式，能更好地保留食材的原汁原味以及其中的营养成分，同时能减少油脂的摄入。而且操作起来简单方便、省时省力，是值得倡导的家庭烹饪方式。',150123456789,1464,1,'img/cart/25.jpg');
INSERT INTO pk_product VALUES(null,'舌尖上的中式点心',4600.00,' 《舌尖上的中式点心》按照难易程度，将中点的制作分为“初级”、“中级”、“高级”三个阶段，采取循序渐进的教学原则，由浅及深地介绍了各式中点的制作，不管你有无经验，都能轻易上手。全书介绍了116种风味各异的中点，从小笼包到水饺，从发糕到卷饼，让你回想起小时候妈妈做饭的味道。每款中点都配有步骤图及详细的文字解析，保证让你轻松上手。视频光盘，让你与名家互动；手机扫描二维码，让学习随时、随地。',150123456789,1842,1,'img/cart/26.jpg');
INSERT INTO pk_product VALUES(null,'极简全蔬食',5200.00,'本书由美国责任医师协会*家推荐，人气公众号“素愫的厨房”出品，从一个专业主妇、专业厨师和专业营养师的角度，为我们精选了101道简单、便捷、美味、可执行、不重复的日常素食料理。本书分为蒸、煮、煎/炸、拌、生食/半生食、汤、五谷杂粮、无糖点心甜品8个部分，图文并茂，装帧精美。另有作者的暖心文字，读者的精彩故事，美文与美食同享。本书给一直还在观望徘徊、不知所措、不知下一顿吃什么的人，提供了一个非常明确、简单、可操作的指导。细读之，不但可以迅速学会，还可以举一反三，创造自己喜欢的食谱，同时收获美味、健康与身心的提升',150123456789,1594,1,'img/cart/27.jpg');
INSERT INTO pk_product VALUES(null,'菜谱大全',4800.00,'更丰富，更直观，更详细，更细致的菜谱大全，给爱做菜和初学做菜的你，让你体会制作的乐趣，美食的疯狂 ，作者更是提供了181个视频供您学会。这本菜谱定会给您不一样的感觉',150123456789,1714,1,'img/cart/28.jpg');
INSERT INTO pk_product VALUES(null,'一学就会的114种中点',3000.00,'庞大作者团队班底权威亲自打造：来自台湾和大陆的进50名星级饭店大厨，专业营养师，配餐师，美食专家联决打造，权威有营养，美味更健康。超值全彩软精装：每本160页全彩印刷，锁线装订，专业摄影师高清大图视觉效果让人垂涎欲滴，设计精美，抄底定价，送人送礼收藏皆佳',150123456789,1964,1,'img/cart/29.jpg');
INSERT INTO pk_product VALUES(null,'一学就会的111种面包',5300.00,'这里介绍了面包的做法，用料，选料等技巧，多种实用技能教您制作不同口味的面包，一杯牛奶，一杯面包，每天健康好心情',150123456789,1701,1,'img/cart/30.jpg');
INSERT INTO pk_product VALUES(null,'四季养生食补食疗大全',2900.00,'因时养生是中华民族古代圣贤的智慧结晶，数千年来，他对中华民族的生存，繁衍和发展，乃至今天的社会生活，都起着不可磨灭的作用。根据中国古老的四季五补理论，人们除了要注重实物的四季五补性，同时还要注意膳食的平衡。',150123456789,1910,1,'img/cart/31.jpg');
INSERT INTO pk_product VALUES(null,'疯狂烤箱-从菜鸟到高手',2700.00,'疯狂烤箱从菜鸟到高手烤箱家用 烘焙食谱书 烘培新手烤箱食谱 家用烤箱制作的食谱大全菜谱烘焙书籍新手基础烘培书籍甜点书籍',150123456789,1964,1,'img/cart/32.jpg');
INSERT INTO pk_product VALUES(null,'百病食疗大全',5600.00,'图文并茂，好学一座，随查随用',150123456789,2070,1,'img/cart/33.jpg');

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
CREATE TABLE pk_cai(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    cname VARCHAR(32),
    proDraw VARCHAR(128),
    video VARCHAR(128),
    ingredients VARCHAR(128),
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
    stepPic_9 VARCHAR(128),
    stepArt_9 VARCHAR(128),
    stepPic_10 VARCHAR(128),
    stepArt_10 VARCHAR(128),
    stepPic_11 VARCHAR(128),
    stepArt_11 VARCHAR(128),
    stepPic_12 VARCHAR(128),
    stepArt_12 VARCHAR(128),
    stepPic_13 VARCHAR(128),
    stepArt_13 VARCHAR(128),
    stepPic_14 VARCHAR(128),
    stepArt_14 VARCHAR(128),
    stepPic_15 VARCHAR(128),
    stepArt_15 VARCHAR(128),
    cort VARCHAR(32),
    uid INT,
    username VARCHAR(32),      #用户名
    zan INT
);

-- 插入数据
INSERT INTO pk_cai VALUES(null,'黯然销魂饭','img/dishes/anranxiaohunfan/anranxiaohunfan.png','img/dishes/anranxiaohunfan/anranxiaohunfan.mp4','猪肉（4片），米饭（两碗）,白菜叶（两片）,鸡蛋（两个）,香菜（两根）,五香粉（三分之一小勺）,油（一勺）,盐（适量）,酱油（一勺）,料酒（半勺）,叉烧酱（两勺）,黑胡椒粉（少许）,孜然粉（少许）,水(三勺）,水淀粉(一小勺淀粉加三勺水）','img/dishes/anranxiaohunfan/stepPic_1.png','1.猪肉切片，用盐，五香粉，料酒，酱油，叉烧酱，黑胡椒粉，孜然粉腌制一晚上','img/dishes/anranxiaohunfan/stepPic_2.png','2.第二天拿出来，平底锅加一勺油，把腌制好的肉片放上去小火煎','img/dishes/anranxiaohunfan/stepPic_3.png','3.两面都煎熟，拿出切小块','img/dishes/anranxiaohunfan/stepPic_4.png','4.白菜，和香菜洗净,用开水烫一下','img/dishes/anranxiaohunfan/stepPic_5.png','5.煎个鸡蛋，再用水淀粉勾芡','img/dishes/anranxiaohunfan/stepPic_6.png','6.煎肉剩的锅底加一点水烧开，炒拌匀','img/dishes/anranxiaohunfan/stepPic_7.png','7.盛一碗米饭，鸡蛋和肉摆好，再把烫过的白菜香菜放上，把汁撒上','img/dishes/anranxiaohunfan/stepPic_8.png','8.成品图',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'炒饭',1,'cjw',2195);

INSERT INTO pk_cai VALUES(null,'锅包肉','img/dishes/guobaorou/guobaorou.png','img/dishes/guobaorou/guobaorou.mp4','猪外脊(250克）,淀粉(70克）,姜(5克）,葱(15克）,胡萝卜(10克）,油(适量）,糖(一大勺）,醋(一大勺）,水(适量）,盐(适量）,料酒(一勺）','img/dishes/guobaorou/stepPic_1.png','1.把猪肉切片，薄厚和刀背的厚度差不多，葱，姜，胡萝卜切丝。','img/dishes/guobaorou/stepPic_2.png','2.把肉放入容器中，倒入一勺料酒和适量盐腌制半个小时左右。','img/dishes/guobaorou/stepPic_3.png','3.放入淀粉和适量水抓匀，使肉片都裹上淀粉糊，再放一勺油抓匀。','img/dishes/guobaorou/stepPic_4.png','4.锅中多放些油烧至七成热，把肉一片一片的放入锅中，炸至表皮变硬捞出控油，再复炸一遍。','img/dishes/guobaorou/stepPic_5.png','5.捞出控油。','img/dishes/guobaorou/stepPic_6.png','6.另起锅放少量油，把葱，姜和胡萝卜丝倒入锅中煸炒几下。','img/dishes/guobaorou/stepPic_7.png','7.放入白糖，醋和适量清水翻炒均匀，把炸好的肉放入锅中均匀的裹上汁就可以出锅了。','img/dishes/guobaorou/stepPic_8.png','8.盛出装盘。',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'本帮菜',2,'lyy',88888);

INSERT INTO pk_cai VALUES(null,'千层蛋糕','img/dishes/qiancengdangao/qiancengdangao.png','img/dishes/qiancengdangao/qiancengdangao.mp4','鸡蛋（3个）,低筋面粉（50g）,玉米淀粉（30g）,糖粉(25g）,牛奶(250ml）,玉米油(10g）,奶油(150g）,色素(适量）','img/dishes/qiancengdangao/stepPic_1.png','1.材料先秤好，把一瓶牛奶倒入大碗中，把低粉 玉米淀粉 糖粉一起筛入牛奶中','img/dishes/qiancengdangao/stepPic_2.png','2.用打蛋器搅拌均匀 可以看到还有颗粒状 不管它 后面还要过筛','img/dishes/qiancengdangao/stepPic_3.png','3.取另一个大碗 鸡蛋轻轻搅拌均匀 不要令它有过多气泡 不然煎出来的饼皮有太多小孔不光滑，把鸡蛋液倒入牛奶中 搅拌均匀','img/dishes/qiancengdangao/stepPic_4.png','4.把面糊过筛 会得到光滑的面糊，先装一勺面糊与玉米油混合，把乳化好的玉米油倒入 稍搅拌 面糊要放入冰箱冰藏20分钟 这样的面糊才更光滑','img/dishes/qiancengdangao/stepPic_5.png','5.把准备好的面糊 平均分成6杯 我这里是一杯三勺 （三张皮），按照彩虹颜色调成 红橙黄绿……','img/dishes/qiancengdangao/stepPic_6.png','6.我这是6寸平底锅 先让锅有点热度（我全程用最小火）倒入一勺 面糊 手转动锅 让面糊均匀摊平 等面皮从中间鼓起小气泡 1分钟后就可以小心从边缘刮起来 第一二张面糊都会不怎么好看，这是第三张皮了 光滑多了 一个颜色三张皮','img/dishes/qiancengdangao/stepPic_7.png','7.继续把其他颜色也 依次煎好 （记得换颜色时把勺子洗干净）','img/dishes/qiancengdangao/stepPic_8.png','8.煎好的饼皮表面会油油的 用烘焙纸包好放冰箱冷藏至少一个小时 才可以用','img/dishes/qiancengdangao/stepPic_9.png','9.冷藏过的饼皮取出来可以摸到 油已经吸引进去了 要小心把它一张一张分开来 为了好看把边缘用剪刀修改一下','img/dishes/qiancengdangao/stepPic_10.png','10.奶油打发 准备组装千层蛋糕','img/dishes/qiancengdangao/stepPic_11.png','11.也是按照彩虹颜色排上去 一张饼皮一层奶油','img/dishes/qiancengdangao/stepPic_12.png','12.最后一张红色要选最好看的放上面 最后用刮刀修一下边缘','img/dishes/qiancengdangao/stepPic_12.png','13.有没心情变好 做好的千层放冰箱 冷藏一下更好吃哦',null,null,null,null,'烘焙',2,'lyy',222223);

-- 重复
INSERT INTO pk_cai VALUES(null,'黯然销魂饭','img/dishes/anranxiaohunfan/anranxiaohunfan.png','img/dishes/anranxiaohunfan/anranxiaohunfan.mp4','猪肉（4片），米饭（两碗）,白菜叶（两片）,鸡蛋（两个）,香菜（两根）,五香粉（三分之一小勺）,油（一勺）,盐（适量）,酱油（一勺）,料酒（半勺）,叉烧酱（两勺）,黑胡椒粉（少许）,孜然粉（少许）,水(三勺）,水淀粉(一小勺淀粉加三勺水）','img/dishes/anranxiaohunfan/stepPic_1.png','1.猪肉切片，用盐，五香粉，料酒，酱油，叉烧酱，黑胡椒粉，孜然粉腌制一晚上','img/dishes/anranxiaohunfan/stepPic_2.png','2.第二天拿出来，平底锅加一勺油，把腌制好的肉片放上去小火煎','img/dishes/anranxiaohunfan/stepPic_3.png','3.两面都煎熟，拿出切小块','img/dishes/anranxiaohunfan/stepPic_4.png','4.白菜，和香菜洗净,用开水烫一下','img/dishes/anranxiaohunfan/stepPic_5.png','5.煎个鸡蛋，再用水淀粉勾芡','img/dishes/anranxiaohunfan/stepPic_6.png','6.煎肉剩的锅底加一点水烧开，炒拌匀','img/dishes/anranxiaohunfan/stepPic_7.png','7.盛一碗米饭，鸡蛋和肉摆好，再把烫过的白菜香菜放上，把汁撒上','img/dishes/anranxiaohunfan/stepPic_8.png','8.成品图',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'炒饭',1,'cjw',2195);

INSERT INTO pk_cai VALUES(null,'锅包肉','img/dishes/guobaorou/guobaorou.png','img/dishes/guobaorou/guobaorou.mp4','猪外脊(250克）,淀粉(70克）,姜(5克）,葱(15克）,胡萝卜(10克）,油(适量）,糖(一大勺）,醋(一大勺）,水(适量）,盐(适量）,料酒(一勺）','img/dishes/guobaorou/stepPic_1.png','1.把猪肉切片，薄厚和刀背的厚度差不多，葱，姜，胡萝卜切丝。','img/dishes/guobaorou/stepPic_2.png','2.把肉放入容器中，倒入一勺料酒和适量盐腌制半个小时左右。','img/dishes/guobaorou/stepPic_3.png','3.放入淀粉和适量水抓匀，使肉片都裹上淀粉糊，再放一勺油抓匀。','img/dishes/guobaorou/stepPic_4.png','4.锅中多放些油烧至七成热，把肉一片一片的放入锅中，炸至表皮变硬捞出控油，再复炸一遍。','img/dishes/guobaorou/stepPic_5.png','5.捞出控油。','img/dishes/guobaorou/stepPic_6.png','6.另起锅放少量油，把葱，姜和胡萝卜丝倒入锅中煸炒几下。','img/dishes/guobaorou/stepPic_7.png','7.放入白糖，醋和适量清水翻炒均匀，把炸好的肉放入锅中均匀的裹上汁就可以出锅了。','img/dishes/guobaorou/stepPic_8.png','8.盛出装盘。',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'本帮菜',2,'lyy',88888);

INSERT INTO pk_cai VALUES(null,'千层蛋糕','img/dishes/qiancengdangao/qiancengdangao.png','img/dishes/qiancengdangao/qiancengdangao.mp4','鸡蛋（3个）,低筋面粉（50g）,玉米淀粉（30g）,糖粉(25g）,牛奶(250ml）,玉米油(10g）,奶油(150g）,色素(适量）','img/dishes/qiancengdangao/stepPic_1.png','1.材料先秤好，把一瓶牛奶倒入大碗中，把低粉 玉米淀粉 糖粉一起筛入牛奶中','img/dishes/qiancengdangao/stepPic_2.png','2.用打蛋器搅拌均匀 可以看到还有颗粒状 不管它 后面还要过筛','img/dishes/qiancengdangao/stepPic_3.png','3.取另一个大碗 鸡蛋轻轻搅拌均匀 不要令它有过多气泡 不然煎出来的饼皮有太多小孔不光滑，把鸡蛋液倒入牛奶中 搅拌均匀','img/dishes/qiancengdangao/stepPic_4.png','4.把面糊过筛 会得到光滑的面糊，先装一勺面糊与玉米油混合，把乳化好的玉米油倒入 稍搅拌 面糊要放入冰箱冰藏20分钟 这样的面糊才更光滑','img/dishes/qiancengdangao/stepPic_5.png','5.把准备好的面糊 平均分成6杯 我这里是一杯三勺 （三张皮），按照彩虹颜色调成 红橙黄绿……','img/dishes/qiancengdangao/stepPic_6.png','6.我这是6寸平底锅 先让锅有点热度（我全程用最小火）倒入一勺 面糊 手转动锅 让面糊均匀摊平 等面皮从中间鼓起小气泡 1分钟后就可以小心从边缘刮起来 第一二张面糊都会不怎么好看，这是第三张皮了 光滑多了 一个颜色三张皮','img/dishes/qiancengdangao/stepPic_7.png','7.继续把其他颜色也 依次煎好 （记得换颜色时把勺子洗干净）','img/dishes/qiancengdangao/stepPic_8.png','8.煎好的饼皮表面会油油的 用烘焙纸包好放冰箱冷藏至少一个小时 才可以用','img/dishes/qiancengdangao/stepPic_9.png','9.冷藏过的饼皮取出来可以摸到 油已经吸引进去了 要小心把它一张一张分开来 为了好看把边缘用剪刀修改一下','img/dishes/qiancengdangao/stepPic_10.png','10.奶油打发 准备组装千层蛋糕','img/dishes/qiancengdangao/stepPic_11.png','11.也是按照彩虹颜色排上去 一张饼皮一层奶油','img/dishes/qiancengdangao/stepPic_12.png','12.最后一张红色要选最好看的放上面 最后用刮刀修一下边缘','img/dishes/qiancengdangao/stepPic_12.png','13.有没心情变好 做好的千层放冰箱 冷藏一下更好吃哦',null,null,null,null,'烘焙',2,'lyy',222223);

INSERT INTO pk_cai VALUES(null,'黯然销魂饭','img/dishes/anranxiaohunfan/anranxiaohunfan.png','img/dishes/anranxiaohunfan/anranxiaohunfan.mp4','猪肉（4片），米饭（两碗）,白菜叶（两片）,鸡蛋（两个）,香菜（两根）,五香粉（三分之一小勺）,油（一勺）,盐（适量）,酱油（一勺）,料酒（半勺）,叉烧酱（两勺）,黑胡椒粉（少许）,孜然粉（少许）,水(三勺）,水淀粉(一小勺淀粉加三勺水）','img/dishes/anranxiaohunfan/stepPic_1.png','1.猪肉切片，用盐，五香粉，料酒，酱油，叉烧酱，黑胡椒粉，孜然粉腌制一晚上','img/dishes/anranxiaohunfan/stepPic_2.png','2.第二天拿出来，平底锅加一勺油，把腌制好的肉片放上去小火煎','img/dishes/anranxiaohunfan/stepPic_3.png','3.两面都煎熟，拿出切小块','img/dishes/anranxiaohunfan/stepPic_4.png','4.白菜，和香菜洗净,用开水烫一下','img/dishes/anranxiaohunfan/stepPic_5.png','5.煎个鸡蛋，再用水淀粉勾芡','img/dishes/anranxiaohunfan/stepPic_6.png','6.煎肉剩的锅底加一点水烧开，炒拌匀','img/dishes/anranxiaohunfan/stepPic_7.png','7.盛一碗米饭，鸡蛋和肉摆好，再把烫过的白菜香菜放上，把汁撒上','img/dishes/anranxiaohunfan/stepPic_8.png','8.成品图',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'炒饭',1,'cjw',2195);

INSERT INTO pk_cai VALUES(null,'锅包肉','img/dishes/guobaorou/guobaorou.png','img/dishes/guobaorou/guobaorou.mp4','猪外脊(250克）,淀粉(70克）,姜(5克）,葱(15克）,胡萝卜(10克）,油(适量）,糖(一大勺）,醋(一大勺）,水(适量）,盐(适量）,料酒(一勺）','img/dishes/guobaorou/stepPic_1.png','1.把猪肉切片，薄厚和刀背的厚度差不多，葱，姜，胡萝卜切丝。','img/dishes/guobaorou/stepPic_2.png','2.把肉放入容器中，倒入一勺料酒和适量盐腌制半个小时左右。','img/dishes/guobaorou/stepPic_3.png','3.放入淀粉和适量水抓匀，使肉片都裹上淀粉糊，再放一勺油抓匀。','img/dishes/guobaorou/stepPic_4.png','4.锅中多放些油烧至七成热，把肉一片一片的放入锅中，炸至表皮变硬捞出控油，再复炸一遍。','img/dishes/guobaorou/stepPic_5.png','5.捞出控油。','img/dishes/guobaorou/stepPic_6.png','6.另起锅放少量油，把葱，姜和胡萝卜丝倒入锅中煸炒几下。','img/dishes/guobaorou/stepPic_7.png','7.放入白糖，醋和适量清水翻炒均匀，把炸好的肉放入锅中均匀的裹上汁就可以出锅了。','img/dishes/guobaorou/stepPic_8.png','8.盛出装盘。',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'本帮菜',2,'lyy',88888);

INSERT INTO pk_cai VALUES(null,'千层蛋糕','img/dishes/qiancengdangao/qiancengdangao.png','img/dishes/qiancengdangao/qiancengdangao.mp4','鸡蛋（3个）,低筋面粉（50g）,玉米淀粉（30g）,糖粉(25g）,牛奶(250ml）,玉米油(10g）,奶油(150g）,色素(适量）','img/dishes/qiancengdangao/stepPic_1.png','1.材料先秤好，把一瓶牛奶倒入大碗中，把低粉 玉米淀粉 糖粉一起筛入牛奶中','img/dishes/qiancengdangao/stepPic_2.png','2.用打蛋器搅拌均匀 可以看到还有颗粒状 不管它 后面还要过筛','img/dishes/qiancengdangao/stepPic_3.png','3.取另一个大碗 鸡蛋轻轻搅拌均匀 不要令它有过多气泡 不然煎出来的饼皮有太多小孔不光滑，把鸡蛋液倒入牛奶中 搅拌均匀','img/dishes/qiancengdangao/stepPic_4.png','4.把面糊过筛 会得到光滑的面糊，先装一勺面糊与玉米油混合，把乳化好的玉米油倒入 稍搅拌 面糊要放入冰箱冰藏20分钟 这样的面糊才更光滑','img/dishes/qiancengdangao/stepPic_5.png','5.把准备好的面糊 平均分成6杯 我这里是一杯三勺 （三张皮），按照彩虹颜色调成 红橙黄绿……','img/dishes/qiancengdangao/stepPic_6.png','6.我这是6寸平底锅 先让锅有点热度（我全程用最小火）倒入一勺 面糊 手转动锅 让面糊均匀摊平 等面皮从中间鼓起小气泡 1分钟后就可以小心从边缘刮起来 第一二张面糊都会不怎么好看，这是第三张皮了 光滑多了 一个颜色三张皮','img/dishes/qiancengdangao/stepPic_7.png','7.继续把其他颜色也 依次煎好 （记得换颜色时把勺子洗干净）','img/dishes/qiancengdangao/stepPic_8.png','8.煎好的饼皮表面会油油的 用烘焙纸包好放冰箱冷藏至少一个小时 才可以用','img/dishes/qiancengdangao/stepPic_9.png','9.冷藏过的饼皮取出来可以摸到 油已经吸引进去了 要小心把它一张一张分开来 为了好看把边缘用剪刀修改一下','img/dishes/qiancengdangao/stepPic_10.png','10.奶油打发 准备组装千层蛋糕','img/dishes/qiancengdangao/stepPic_11.png','11.也是按照彩虹颜色排上去 一张饼皮一层奶油','img/dishes/qiancengdangao/stepPic_12.png','12.最后一张红色要选最好看的放上面 最后用刮刀修一下边缘','img/dishes/qiancengdangao/stepPic_12.png','13.有没心情变好 做好的千层放冰箱 冷藏一下更好吃哦',null,null,null,null,'烘焙',2,'lyy',222223);

INSERT INTO pk_cai VALUES(null,'黯然销魂饭','img/dishes/anranxiaohunfan/anranxiaohunfan.png','img/dishes/anranxiaohunfan/anranxiaohunfan.mp4','猪肉（4片），米饭（两碗）,白菜叶（两片）,鸡蛋（两个）,香菜（两根）,五香粉（三分之一小勺）,油（一勺）,盐（适量）,酱油（一勺）,料酒（半勺）,叉烧酱（两勺）,黑胡椒粉（少许）,孜然粉（少许）,水(三勺）,水淀粉(一小勺淀粉加三勺水）','img/dishes/anranxiaohunfan/stepPic_1.png','1.猪肉切片，用盐，五香粉，料酒，酱油，叉烧酱，黑胡椒粉，孜然粉腌制一晚上','img/dishes/anranxiaohunfan/stepPic_2.png','2.第二天拿出来，平底锅加一勺油，把腌制好的肉片放上去小火煎','img/dishes/anranxiaohunfan/stepPic_3.png','3.两面都煎熟，拿出切小块','img/dishes/anranxiaohunfan/stepPic_4.png','4.白菜，和香菜洗净,用开水烫一下','img/dishes/anranxiaohunfan/stepPic_5.png','5.煎个鸡蛋，再用水淀粉勾芡','img/dishes/anranxiaohunfan/stepPic_6.png','6.煎肉剩的锅底加一点水烧开，炒拌匀','img/dishes/anranxiaohunfan/stepPic_7.png','7.盛一碗米饭，鸡蛋和肉摆好，再把烫过的白菜香菜放上，把汁撒上','img/dishes/anranxiaohunfan/stepPic_8.png','8.成品图',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'炒饭',1,'cjw',2195);

INSERT INTO pk_cai VALUES(null,'锅包肉','img/dishes/guobaorou/guobaorou.png','img/dishes/guobaorou/guobaorou.mp4','猪外脊(250克）,淀粉(70克）,姜(5克）,葱(15克）,胡萝卜(10克）,油(适量）,糖(一大勺）,醋(一大勺）,水(适量）,盐(适量）,料酒(一勺）','img/dishes/guobaorou/stepPic_1.png','1.把猪肉切片，薄厚和刀背的厚度差不多，葱，姜，胡萝卜切丝。','img/dishes/guobaorou/stepPic_2.png','2.把肉放入容器中，倒入一勺料酒和适量盐腌制半个小时左右。','img/dishes/guobaorou/stepPic_3.png','3.放入淀粉和适量水抓匀，使肉片都裹上淀粉糊，再放一勺油抓匀。','img/dishes/guobaorou/stepPic_4.png','4.锅中多放些油烧至七成热，把肉一片一片的放入锅中，炸至表皮变硬捞出控油，再复炸一遍。','img/dishes/guobaorou/stepPic_5.png','5.捞出控油。','img/dishes/guobaorou/stepPic_6.png','6.另起锅放少量油，把葱，姜和胡萝卜丝倒入锅中煸炒几下。','img/dishes/guobaorou/stepPic_7.png','7.放入白糖，醋和适量清水翻炒均匀，把炸好的肉放入锅中均匀的裹上汁就可以出锅了。','img/dishes/guobaorou/stepPic_8.png','8.盛出装盘。',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'本帮菜',2,'lyy',88888);

INSERT INTO pk_cai VALUES(null,'千层蛋糕','img/dishes/qiancengdangao/qiancengdangao.png','img/dishes/qiancengdangao/qiancengdangao.mp4','鸡蛋（3个）,低筋面粉（50g）,玉米淀粉（30g）,糖粉(25g）,牛奶(250ml）,玉米油(10g）,奶油(150g）,色素(适量）','img/dishes/qiancengdangao/stepPic_1.png','1.材料先秤好，把一瓶牛奶倒入大碗中，把低粉 玉米淀粉 糖粉一起筛入牛奶中','img/dishes/qiancengdangao/stepPic_2.png','2.用打蛋器搅拌均匀 可以看到还有颗粒状 不管它 后面还要过筛','img/dishes/qiancengdangao/stepPic_3.png','3.取另一个大碗 鸡蛋轻轻搅拌均匀 不要令它有过多气泡 不然煎出来的饼皮有太多小孔不光滑，把鸡蛋液倒入牛奶中 搅拌均匀','img/dishes/qiancengdangao/stepPic_4.png','4.把面糊过筛 会得到光滑的面糊，先装一勺面糊与玉米油混合，把乳化好的玉米油倒入 稍搅拌 面糊要放入冰箱冰藏20分钟 这样的面糊才更光滑','img/dishes/qiancengdangao/stepPic_5.png','5.把准备好的面糊 平均分成6杯 我这里是一杯三勺 （三张皮），按照彩虹颜色调成 红橙黄绿……','img/dishes/qiancengdangao/stepPic_6.png','6.我这是6寸平底锅 先让锅有点热度（我全程用最小火）倒入一勺 面糊 手转动锅 让面糊均匀摊平 等面皮从中间鼓起小气泡 1分钟后就可以小心从边缘刮起来 第一二张面糊都会不怎么好看，这是第三张皮了 光滑多了 一个颜色三张皮','img/dishes/qiancengdangao/stepPic_7.png','7.继续把其他颜色也 依次煎好 （记得换颜色时把勺子洗干净）','img/dishes/qiancengdangao/stepPic_8.png','8.煎好的饼皮表面会油油的 用烘焙纸包好放冰箱冷藏至少一个小时 才可以用','img/dishes/qiancengdangao/stepPic_9.png','9.冷藏过的饼皮取出来可以摸到 油已经吸引进去了 要小心把它一张一张分开来 为了好看把边缘用剪刀修改一下','img/dishes/qiancengdangao/stepPic_10.png','10.奶油打发 准备组装千层蛋糕','img/dishes/qiancengdangao/stepPic_11.png','11.也是按照彩虹颜色排上去 一张饼皮一层奶油','img/dishes/qiancengdangao/stepPic_12.png','12.最后一张红色要选最好看的放上面 最后用刮刀修一下边缘','img/dishes/qiancengdangao/stepPic_12.png','13.有没心情变好 做好的千层放冰箱 冷藏一下更好吃哦',null,null,null,null,'烘焙',2,'lyy',222223);

INSERT INTO pk_cai VALUES(null,'黯然销魂饭','img/dishes/anranxiaohunfan/anranxiaohunfan.png','img/dishes/anranxiaohunfan/anranxiaohunfan.mp4','猪肉（4片），米饭（两碗）,白菜叶（两片）,鸡蛋（两个）,香菜（两根）,五香粉（三分之一小勺）,油（一勺）,盐（适量）,酱油（一勺）,料酒（半勺）,叉烧酱（两勺）,黑胡椒粉（少许）,孜然粉（少许）,水(三勺）,水淀粉(一小勺淀粉加三勺水）','img/dishes/anranxiaohunfan/stepPic_1.png','1.猪肉切片，用盐，五香粉，料酒，酱油，叉烧酱，黑胡椒粉，孜然粉腌制一晚上','img/dishes/anranxiaohunfan/stepPic_2.png','2.第二天拿出来，平底锅加一勺油，把腌制好的肉片放上去小火煎','img/dishes/anranxiaohunfan/stepPic_3.png','3.两面都煎熟，拿出切小块','img/dishes/anranxiaohunfan/stepPic_4.png','4.白菜，和香菜洗净,用开水烫一下','img/dishes/anranxiaohunfan/stepPic_5.png','5.煎个鸡蛋，再用水淀粉勾芡','img/dishes/anranxiaohunfan/stepPic_6.png','6.煎肉剩的锅底加一点水烧开，炒拌匀','img/dishes/anranxiaohunfan/stepPic_7.png','7.盛一碗米饭，鸡蛋和肉摆好，再把烫过的白菜香菜放上，把汁撒上','img/dishes/anranxiaohunfan/stepPic_8.png','8.成品图',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'炒饭',1,'cjw',2195);

INSERT INTO pk_cai VALUES(null,'锅包肉','img/dishes/guobaorou/guobaorou.png','img/dishes/guobaorou/guobaorou.mp4','猪外脊(250克）,淀粉(70克）,姜(5克）,葱(15克）,胡萝卜(10克）,油(适量）,糖(一大勺）,醋(一大勺）,水(适量）,盐(适量）,料酒(一勺）','img/dishes/guobaorou/stepPic_1.png','1.把猪肉切片，薄厚和刀背的厚度差不多，葱，姜，胡萝卜切丝。','img/dishes/guobaorou/stepPic_2.png','2.把肉放入容器中，倒入一勺料酒和适量盐腌制半个小时左右。','img/dishes/guobaorou/stepPic_3.png','3.放入淀粉和适量水抓匀，使肉片都裹上淀粉糊，再放一勺油抓匀。','img/dishes/guobaorou/stepPic_4.png','4.锅中多放些油烧至七成热，把肉一片一片的放入锅中，炸至表皮变硬捞出控油，再复炸一遍。','img/dishes/guobaorou/stepPic_5.png','5.捞出控油。','img/dishes/guobaorou/stepPic_6.png','6.另起锅放少量油，把葱，姜和胡萝卜丝倒入锅中煸炒几下。','img/dishes/guobaorou/stepPic_7.png','7.放入白糖，醋和适量清水翻炒均匀，把炸好的肉放入锅中均匀的裹上汁就可以出锅了。','img/dishes/guobaorou/stepPic_8.png','8.盛出装盘。',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'本帮菜',2,'lyy',88888);

INSERT INTO pk_cai VALUES(null,'千层蛋糕','img/dishes/qiancengdangao/qiancengdangao.png','img/dishes/qiancengdangao/qiancengdangao.mp4','鸡蛋（3个）,低筋面粉（50g）,玉米淀粉（30g）,糖粉(25g）,牛奶(250ml）,玉米油(10g）,奶油(150g）,色素(适量）','img/dishes/qiancengdangao/stepPic_1.png','1.材料先秤好，把一瓶牛奶倒入大碗中，把低粉 玉米淀粉 糖粉一起筛入牛奶中','img/dishes/qiancengdangao/stepPic_2.png','2.用打蛋器搅拌均匀 可以看到还有颗粒状 不管它 后面还要过筛','img/dishes/qiancengdangao/stepPic_3.png','3.取另一个大碗 鸡蛋轻轻搅拌均匀 不要令它有过多气泡 不然煎出来的饼皮有太多小孔不光滑，把鸡蛋液倒入牛奶中 搅拌均匀','img/dishes/qiancengdangao/stepPic_4.png','4.把面糊过筛 会得到光滑的面糊，先装一勺面糊与玉米油混合，把乳化好的玉米油倒入 稍搅拌 面糊要放入冰箱冰藏20分钟 这样的面糊才更光滑','img/dishes/qiancengdangao/stepPic_5.png','5.把准备好的面糊 平均分成6杯 我这里是一杯三勺 （三张皮），按照彩虹颜色调成 红橙黄绿……','img/dishes/qiancengdangao/stepPic_6.png','6.我这是6寸平底锅 先让锅有点热度（我全程用最小火）倒入一勺 面糊 手转动锅 让面糊均匀摊平 等面皮从中间鼓起小气泡 1分钟后就可以小心从边缘刮起来 第一二张面糊都会不怎么好看，这是第三张皮了 光滑多了 一个颜色三张皮','img/dishes/qiancengdangao/stepPic_7.png','7.继续把其他颜色也 依次煎好 （记得换颜色时把勺子洗干净）','img/dishes/qiancengdangao/stepPic_8.png','8.煎好的饼皮表面会油油的 用烘焙纸包好放冰箱冷藏至少一个小时 才可以用','img/dishes/qiancengdangao/stepPic_9.png','9.冷藏过的饼皮取出来可以摸到 油已经吸引进去了 要小心把它一张一张分开来 为了好看把边缘用剪刀修改一下','img/dishes/qiancengdangao/stepPic_10.png','10.奶油打发 准备组装千层蛋糕','img/dishes/qiancengdangao/stepPic_11.png','11.也是按照彩虹颜色排上去 一张饼皮一层奶油','img/dishes/qiancengdangao/stepPic_12.png','12.最后一张红色要选最好看的放上面 最后用刮刀修一下边缘','img/dishes/qiancengdangao/stepPic_12.png','13.有没心情变好 做好的千层放冰箱 冷藏一下更好吃哦',null,null,null,null,'烘焙',2,'lyy',222223);

INSERT INTO pk_cai VALUES(null,'黯然销魂饭','img/dishes/anranxiaohunfan/anranxiaohunfan.png','img/dishes/anranxiaohunfan/anranxiaohunfan.mp4','猪肉（4片），米饭（两碗）,白菜叶（两片）,鸡蛋（两个）,香菜（两根）,五香粉（三分之一小勺）,油（一勺）,盐（适量）,酱油（一勺）,料酒（半勺）,叉烧酱（两勺）,黑胡椒粉（少许）,孜然粉（少许）,水(三勺）,水淀粉(一小勺淀粉加三勺水）','img/dishes/anranxiaohunfan/stepPic_1.png','1.猪肉切片，用盐，五香粉，料酒，酱油，叉烧酱，黑胡椒粉，孜然粉腌制一晚上','img/dishes/anranxiaohunfan/stepPic_2.png','2.第二天拿出来，平底锅加一勺油，把腌制好的肉片放上去小火煎','img/dishes/anranxiaohunfan/stepPic_3.png','3.两面都煎熟，拿出切小块','img/dishes/anranxiaohunfan/stepPic_4.png','4.白菜，和香菜洗净,用开水烫一下','img/dishes/anranxiaohunfan/stepPic_5.png','5.煎个鸡蛋，再用水淀粉勾芡','img/dishes/anranxiaohunfan/stepPic_6.png','6.煎肉剩的锅底加一点水烧开，炒拌匀','img/dishes/anranxiaohunfan/stepPic_7.png','7.盛一碗米饭，鸡蛋和肉摆好，再把烫过的白菜香菜放上，把汁撒上','img/dishes/anranxiaohunfan/stepPic_8.png','8.成品图',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'炒饭',1,'cjw',2195);

INSERT INTO pk_cai VALUES(null,'锅包肉','img/dishes/guobaorou/guobaorou.png','img/dishes/guobaorou/guobaorou.mp4','猪外脊(250克）,淀粉(70克）,姜(5克）,葱(15克）,胡萝卜(10克）,油(适量）,糖(一大勺）,醋(一大勺）,水(适量）,盐(适量）,料酒(一勺）','img/dishes/guobaorou/stepPic_1.png','1.把猪肉切片，薄厚和刀背的厚度差不多，葱，姜，胡萝卜切丝。','img/dishes/guobaorou/stepPic_2.png','2.把肉放入容器中，倒入一勺料酒和适量盐腌制半个小时左右。','img/dishes/guobaorou/stepPic_3.png','3.放入淀粉和适量水抓匀，使肉片都裹上淀粉糊，再放一勺油抓匀。','img/dishes/guobaorou/stepPic_4.png','4.锅中多放些油烧至七成热，把肉一片一片的放入锅中，炸至表皮变硬捞出控油，再复炸一遍。','img/dishes/guobaorou/stepPic_5.png','5.捞出控油。','img/dishes/guobaorou/stepPic_6.png','6.另起锅放少量油，把葱，姜和胡萝卜丝倒入锅中煸炒几下。','img/dishes/guobaorou/stepPic_7.png','7.放入白糖，醋和适量清水翻炒均匀，把炸好的肉放入锅中均匀的裹上汁就可以出锅了。','img/dishes/guobaorou/stepPic_8.png','8.盛出装盘。',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'本帮菜',2,'lyy',88888);

INSERT INTO pk_cai VALUES(null,'千层蛋糕','img/dishes/qiancengdangao/qiancengdangao.png','img/dishes/qiancengdangao/qiancengdangao.mp4','鸡蛋（3个）,低筋面粉（50g）,玉米淀粉（30g）,糖粉(25g）,牛奶(250ml）,玉米油(10g）,奶油(150g）,色素(适量）','img/dishes/qiancengdangao/stepPic_1.png','1.材料先秤好，把一瓶牛奶倒入大碗中，把低粉 玉米淀粉 糖粉一起筛入牛奶中','img/dishes/qiancengdangao/stepPic_2.png','2.用打蛋器搅拌均匀 可以看到还有颗粒状 不管它 后面还要过筛','img/dishes/qiancengdangao/stepPic_3.png','3.取另一个大碗 鸡蛋轻轻搅拌均匀 不要令它有过多气泡 不然煎出来的饼皮有太多小孔不光滑，把鸡蛋液倒入牛奶中 搅拌均匀','img/dishes/qiancengdangao/stepPic_4.png','4.把面糊过筛 会得到光滑的面糊，先装一勺面糊与玉米油混合，把乳化好的玉米油倒入 稍搅拌 面糊要放入冰箱冰藏20分钟 这样的面糊才更光滑','img/dishes/qiancengdangao/stepPic_5.png','5.把准备好的面糊 平均分成6杯 我这里是一杯三勺 （三张皮），按照彩虹颜色调成 红橙黄绿……','img/dishes/qiancengdangao/stepPic_6.png','6.我这是6寸平底锅 先让锅有点热度（我全程用最小火）倒入一勺 面糊 手转动锅 让面糊均匀摊平 等面皮从中间鼓起小气泡 1分钟后就可以小心从边缘刮起来 第一二张面糊都会不怎么好看，这是第三张皮了 光滑多了 一个颜色三张皮','img/dishes/qiancengdangao/stepPic_7.png','7.继续把其他颜色也 依次煎好 （记得换颜色时把勺子洗干净）','img/dishes/qiancengdangao/stepPic_8.png','8.煎好的饼皮表面会油油的 用烘焙纸包好放冰箱冷藏至少一个小时 才可以用','img/dishes/qiancengdangao/stepPic_9.png','9.冷藏过的饼皮取出来可以摸到 油已经吸引进去了 要小心把它一张一张分开来 为了好看把边缘用剪刀修改一下','img/dishes/qiancengdangao/stepPic_10.png','10.奶油打发 准备组装千层蛋糕','img/dishes/qiancengdangao/stepPic_11.png','11.也是按照彩虹颜色排上去 一张饼皮一层奶油','img/dishes/qiancengdangao/stepPic_12.png','12.最后一张红色要选最好看的放上面 最后用刮刀修一下边缘','img/dishes/qiancengdangao/stepPic_12.png','13.有没心情变好 做好的千层放冰箱 冷藏一下更好吃哦',null,null,null,null,'烘焙',2,'lyy',222223);

INSERT INTO pk_cai VALUES(null,'黯然销魂饭','img/dishes/anranxiaohunfan/anranxiaohunfan.png','img/dishes/anranxiaohunfan/anranxiaohunfan.mp4','猪肉（4片），米饭（两碗）,白菜叶（两片）,鸡蛋（两个）,香菜（两根）,五香粉（三分之一小勺）,油（一勺）,盐（适量）,酱油（一勺）,料酒（半勺）,叉烧酱（两勺）,黑胡椒粉（少许）,孜然粉（少许）,水(三勺）,水淀粉(一小勺淀粉加三勺水）','img/dishes/anranxiaohunfan/stepPic_1.png','1.猪肉切片，用盐，五香粉，料酒，酱油，叉烧酱，黑胡椒粉，孜然粉腌制一晚上','img/dishes/anranxiaohunfan/stepPic_2.png','2.第二天拿出来，平底锅加一勺油，把腌制好的肉片放上去小火煎','img/dishes/anranxiaohunfan/stepPic_3.png','3.两面都煎熟，拿出切小块','img/dishes/anranxiaohunfan/stepPic_4.png','4.白菜，和香菜洗净,用开水烫一下','img/dishes/anranxiaohunfan/stepPic_5.png','5.煎个鸡蛋，再用水淀粉勾芡','img/dishes/anranxiaohunfan/stepPic_6.png','6.煎肉剩的锅底加一点水烧开，炒拌匀','img/dishes/anranxiaohunfan/stepPic_7.png','7.盛一碗米饭，鸡蛋和肉摆好，再把烫过的白菜香菜放上，把汁撒上','img/dishes/anranxiaohunfan/stepPic_8.png','8.成品图',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'炒饭',1,'cjw',2195);

INSERT INTO pk_cai VALUES(null,'锅包肉','img/dishes/guobaorou/guobaorou.png','img/dishes/guobaorou/guobaorou.mp4','猪外脊(250克）,淀粉(70克）,姜(5克）,葱(15克）,胡萝卜(10克）,油(适量）,糖(一大勺）,醋(一大勺）,水(适量）,盐(适量）,料酒(一勺）','img/dishes/guobaorou/stepPic_1.png','1.把猪肉切片，薄厚和刀背的厚度差不多，葱，姜，胡萝卜切丝。','img/dishes/guobaorou/stepPic_2.png','2.把肉放入容器中，倒入一勺料酒和适量盐腌制半个小时左右。','img/dishes/guobaorou/stepPic_3.png','3.放入淀粉和适量水抓匀，使肉片都裹上淀粉糊，再放一勺油抓匀。','img/dishes/guobaorou/stepPic_4.png','4.锅中多放些油烧至七成热，把肉一片一片的放入锅中，炸至表皮变硬捞出控油，再复炸一遍。','img/dishes/guobaorou/stepPic_5.png','5.捞出控油。','img/dishes/guobaorou/stepPic_6.png','6.另起锅放少量油，把葱，姜和胡萝卜丝倒入锅中煸炒几下。','img/dishes/guobaorou/stepPic_7.png','7.放入白糖，醋和适量清水翻炒均匀，把炸好的肉放入锅中均匀的裹上汁就可以出锅了。','img/dishes/guobaorou/stepPic_8.png','8.盛出装盘。',null,null,null,null,null,null,null,null,null,null,null,null,null,null,'本帮菜',2,'lyy',88888);

INSERT INTO pk_cai VALUES(null,'千层蛋糕','img/dishes/qiancengdangao/qiancengdangao.png','img/dishes/qiancengdangao/qiancengdangao.mp4','鸡蛋（3个）,低筋面粉（50g）,玉米淀粉（30g）,糖粉(25g）,牛奶(250ml）,玉米油(10g）,奶油(150g）,色素(适量）','img/dishes/qiancengdangao/stepPic_1.png','1.材料先秤好，把一瓶牛奶倒入大碗中，把低粉 玉米淀粉 糖粉一起筛入牛奶中','img/dishes/qiancengdangao/stepPic_2.png','2.用打蛋器搅拌均匀 可以看到还有颗粒状 不管它 后面还要过筛','img/dishes/qiancengdangao/stepPic_3.png','3.取另一个大碗 鸡蛋轻轻搅拌均匀 不要令它有过多气泡 不然煎出来的饼皮有太多小孔不光滑，把鸡蛋液倒入牛奶中 搅拌均匀','img/dishes/qiancengdangao/stepPic_4.png','4.把面糊过筛 会得到光滑的面糊，先装一勺面糊与玉米油混合，把乳化好的玉米油倒入 稍搅拌 面糊要放入冰箱冰藏20分钟 这样的面糊才更光滑','img/dishes/qiancengdangao/stepPic_5.png','5.把准备好的面糊 平均分成6杯 我这里是一杯三勺 （三张皮），按照彩虹颜色调成 红橙黄绿……','img/dishes/qiancengdangao/stepPic_6.png','6.我这是6寸平底锅 先让锅有点热度（我全程用最小火）倒入一勺 面糊 手转动锅 让面糊均匀摊平 等面皮从中间鼓起小气泡 1分钟后就可以小心从边缘刮起来 第一二张面糊都会不怎么好看，这是第三张皮了 光滑多了 一个颜色三张皮','img/dishes/qiancengdangao/stepPic_7.png','7.继续把其他颜色也 依次煎好 （记得换颜色时把勺子洗干净）','img/dishes/qiancengdangao/stepPic_8.png','8.煎好的饼皮表面会油油的 用烘焙纸包好放冰箱冷藏至少一个小时 才可以用','img/dishes/qiancengdangao/stepPic_9.png','9.冷藏过的饼皮取出来可以摸到 油已经吸引进去了 要小心把它一张一张分开来 为了好看把边缘用剪刀修改一下','img/dishes/qiancengdangao/stepPic_10.png','10.奶油打发 准备组装千层蛋糕','img/dishes/qiancengdangao/stepPic_11.png','11.也是按照彩虹颜色排上去 一张饼皮一层奶油','img/dishes/qiancengdangao/stepPic_12.png','12.最后一张红色要选最好看的放上面 最后用刮刀修一下边缘','img/dishes/qiancengdangao/stepPic_12.png','13.有没心情变好 做好的千层放冰箱 冷藏一下更好吃哦',null,null,null,null,'烘焙',2,'lyy',222223);
-- 重复