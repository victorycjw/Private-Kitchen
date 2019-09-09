//1:引入第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
//2:配置第三方模块
 //2.1:配置连接池
 var pool = mysql.createPool({
   host:"127.0.0.1",
   user:"root",
   password:"",
   port:3306,
   database:"p_kitchen",
   connectionLimit:15
 })
 //2.2:跨域
 var server = express();
 server.use(cors({
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
   credentials:true
 }))
 //2.3:session
 server.use(session({
   secret:"128位字符串",
   resave:true,
   saveUninitialized:true
 }))
 //2.9:指定静态目录
server.use(express.static("public"))
//http://127.0.0.1:3000/img/cart/01.jpg
 server.listen(3000);

// 功能零：完成用户注册
server.get("/register",(req,res)=>{
   //1:参数:获取网页传递多个数据 uname upwd phone email avatar username gender
   var uname = req.query.uname;
   var upwd = req.query.upwd;
   var phone=req.query.phone;
   var email=req.query.email;
   var avatar=req.query.avatar;
   var username=req.query.username;
   var gender=req.query.gender;
   //2:sql:查询sql语句
   //数据库 库名 表名 列名 小写字母
   var sql = "INSERT INTO pk_user VALUES (null,?,md5(?),?,?,?,?,?)";
   //3:json:{code:1,msg:"登录成功"}
   pool.query(sql,[uname,upwd,phone,email,avatar,username,gender],(err,result)=>{
      //执行sql语句回调函数
      // console.log(result);
      if(err)throw err;
      //判断
      if(result.affectedRows>0){
         //注册成功
         res.send({code:1,msg:"注册成功"});
      }else{
         res.send({code:-1,msg:"注册信息输入错误"});
      }
   })
 });

 //功能一:完成用户登录操作
server.get("/login",(req,res)=>{
   //1:参数:获取网页传递两个数据 uname upwd
   //参数方式一:?uname=tom&upwd=123 查询字符串
   //参数方式二:/tom/123            参数
   var uname = req.query.uname;
   var upwd = req.query.upwd;
   //2:sql:查询sql语句
   //数据库 库名 表名 列名 小写字母
   var sql = "SELECT id FROM pk_user";
   sql+=" WHERE uname = ? AND upwd=md5(?)";
   //3:json:{code:1,msg:"登录成功"}
   pool.query(sql,[uname,upwd],(err,result)=>{
      //执行sql语句回调函数
      if(err)throw err;
      //判断
      if(result.length==0){
         res.send({code:-1,msg:"用户名或密码有误"});
      }else{
        //登录成功
        //1.登录成功凭据保存session
        //result=[{id:1}]
         req.session.uid=result[0].id;
         // console.log(req.session);
        //2.将成功消息发送脚手架
         res.send({code:1,msg:"登录成功"})    
      }
   })
 });


//功能二：分页查询商品列表
//1.接收请求方式GET  请求地址 /product
server.get("/product",(req,res)=>{
  //2.接收客户端两个参数   pno 页码     pageSize 页大小
   var p=req.query.pno;
   var ps=req.query.pageSize;
  //3.设置参数默认值  pno:1  pageSize:4
   if(!p){p=1}
   if(!ps){ps=4}
  //4.创建变量  offset  计算数据库偏移量
   var offset=(p-1)*ps;
  //5.对pageSize转换整型？ nodejs要求  否则报错
   ps=parseInt(ps);
  //6.创建sql语句
   var sql="SELECT lid,price,lname";
   sql+=" ,img_url FROM pk_product";
   sql+=" LIMIT ?,?";
  //7.通过连接池发送sql语句
   pool.query(sql,[offset,ps],(err,result)=>{
    if(err)throw err;  
  //8.获取数据库返回的查询结果
  //9.将查询结果发送客户端
    res.send({code:1,msg:"查询成功",data:result});
   });
  })


//功能三：将指定的商品加入购物车
//#此功能的先行条件是先登录
//1.GET   /addcart 
server.get("/addCart",(req,res)=>{
  //2.参数
     //获取当前登录用户的id值
     var uid=req.session.uid;
     //如果当前用户没有登录
     if(!uid){
        //返回错误消息
        res.send({code:-1,msg:"请先登录"});
        return;
     }
     //获取商品编号  商品价格  商品名称
     var lid=req.query.lid;
     var price=req.query.price;
     var lname=req.query.lname;
     var img_url=req.query.img_url;
     //3.查询指定用户是否购买过此商品
     var sql="SELECT id FROM pk_cart WHERE uid=? AND lid=?";
     pool.query(sql,[uid,lid],(err,result)=>{
        if(err)throw err;      
        //4.没有购买过就添加
        var sql="";
        if(result.length==0){
           sql=`INSERT INTO pk_cart VALUES(null,${lid},${uid},1,'${lname}',${price},'${img_url}')`;
        }else{
           //5.购买过此商品就更新
           sql=`UPDATE pk_cart SET count=count+1 WHERE uid=${uid} AND lid=${lid}`;
        } 
        pool.query(sql,(err,result)=>{
           if(err)throw err;
           res.send({code:1,msg:"添加成功"});
        })
     //6.json     
     })
  })


//功能四：购物车
//1.请求方式get
server.get("/cart",(req,res)=>{
   //2.获取uid，并且判断如果没有请求登录
   var uid=req.session.uid;
   if(!uid){
      res.send({code:-1,msg:"请先登录"});
      return;
   }
   //3.创建sql语句，查询用户购物车内容
   var sql="SELECT id,lid,lname,price,count,img_url FROM pk_cart WHERE uid=?";
   pool.query(sql,[uid],(err,result)=>{
      if(err)throw err;
      res.send({code:1,data:result});   
   })
//4.获取返回结果并且发送客户端
})


//功能五：删除购物车中指定一个商品
//1.请求方式get
server.get("/delItem",(req,res)=>{   
   //2.获取id，并且判断如果没有请求登录
   var id=req.query.id;
//3.创建sql语句，查询用户购物车内容
   var sql="DELETE FROM pk_cart WHERE id=?";
   pool.query(sql,[id],(err,result)=>{
      if(err)throw err;
      //console.log(result);
      //res.send({code:1,msg:"删除成功"}); 
      // 判断条件 如果sql insert/delete/update  执行成功条件：影响行数  
      if(result.affectedRows>0){
         res.send({code:1,msg:"删除成功"});
        }else{
         res.send({code:-1,msg:"删除失败"}) 
        }
   })
//4.获取返回结果并且发送客户端
})


//功能六：删除购物车中指定多个商品
server.get("/delM",(req,res)=>{
   // ids为变量，一次储存多个要删除的id值
   //(1)参数
   var ids=req.query.ids;
   //(2)sql 删除多个购物车
   var sql=`DELETE FROM pk_cart WHERE id IN (${ids})`;
   pool.query(sql,(err,result)=>{
      if(err)throw err;
      if(result.affectedRows>0){
         res.send({code:1,msg:"删除成功"});
      }else{
         res.send({code:-1,msg:"删除失败"});
      }
   })
})


//功能七：购物车点击“-”，减少数据库中的count数量
//1.请求方式get
server.get("/reCount",(req,res)=>{   
   //2.获取id，并且判断如果没有请求登录
   var id=req.query.id;
   var count=req.query.count;
   count--;
//3.创建sql语句，查询用户购物车内容
   var sql="UPDATE pk_cart SET count=? WHERE id=?";
   pool.query(sql,[count,id],(err,result)=>{
      if(err)throw err;
      // console.log(result);
      res.send({code:1,msg:"更新成功"}); 
   })
//4.获取返回结果并且发送客户端
})


//功能八：购物车点击“+”，增加数据库中的count数量
//1.请求方式get
server.get("/addCount",(req,res)=>{   
   //2.获取id，并且判断如果没有请求登录
   var id=req.query.id;
   var count=req.query.count;
   count++;
//3.创建sql语句，查询用户购物车内容
   var sql="UPDATE pk_cart SET count=? WHERE id=?";
   pool.query(sql,[count,id],(err,result)=>{
      if(err)throw err;
      // console.log(result);
      res.send({code:1,msg:"更新成功"});
   })
//4.获取返回结果并且发送客户端
})