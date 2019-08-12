<template>
    <div class="login_container">
      <!--pk/Register.vue-->
      <h1>注册</h1>
      <!-- 用户名 -->
      <mt-field :placeholder="unameHolder" v-model="uname" class="myinput" type="text"></mt-field>
      <!-- 密码 -->
      <mt-field :placeholder="upwdHolder" v-model="upwd" class="myinput" type="password"></mt-field>
      <!-- 二次密码 -->
      <mt-field :placeholder="aupwdHolder" v-model="aupwd" class="myinput" type="password"></mt-field>
      <!-- 手机号 -->
      <mt-field :placeholder="phoneHolder" v-model="phone" class="myinput" type="text"></mt-field>
      <!-- 验证码 -->
      <mt-field :placeholder="verifyHolder" v-model="verify" class="myinput" type="text"></mt-field>
      <!-- 注册按钮-->
      <mt-button size="large" class="mybutton" @click="login">注册</mt-button>
    </div>  
  </template>
  <script>
   export default {
     data(){
       return {
         unameHolder:"请输入用户名",
         upwdHolder:"请输入密码",
         aupwdHolder:"请再次输入密码",
         phoneHolder:"请输入手机号",
         verifyHolder:"请输入验证码",
         uname:"",
         upwd:"",
         aupwd:"",
         phone:"",
         verify:"",
       }
     },methods:{
       login(){
         //完成登录
         //1:获取用户名和密码
         var u = this.uname;
         var p = this.upwd;
         var ap = this.aupwd;
         //2:创建一个正则表达式
         //  字母数字下划3~12
  var reg = /^[a-z0-9_-]{3,12}$/i;
      //3:验证用户名 出错提示 53
      if(!reg.test(u)){
       this.$toast("用户名格式不正确");
      return;
      }
      //4:验证密码   出错提示
     if(!reg.test(p)){
      this.$toast("密码格式不正确");
      return;
     }
     //5:发送ajax请求 axios
     var url = "register";
     var obj = {uname:u,upwd:p,aupwd:ap};
     this.axios.get(url,{params:obj}).then(
       result=>{
       //1:判断服务器返回结果
       //2:code:>0 跳转Home组件
       if(result.data.code > 0){
          this.$router.push("/Login");
       }else{
          this.$messagebox("提示","用户名或密码有误");
       }
     });
     }
     }
   }   
  </script>
  <style scoped>
   .login_container{
    margin: 0 auto;
    text-align: center;
    background:#ddd;
   }
   .myinput{
       /* background: #ddd; */
   }
   .mybutton{
       background: #0aa1ed;
       color: #fff;
   }
  </style>