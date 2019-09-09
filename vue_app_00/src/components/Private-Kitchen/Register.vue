<template>
    <div class="login_container">
      <!--pk/Register.vue-->
      <div class="titlebar">
        <van-nav-bar title="注册" left-text="返回" left-arrow @click-left="onClickLeft" @click-right="onClickRight">
          <van-icon name="search" slot="right" />
        </van-nav-bar>
      </div>
      <!-- 用户名 -->
      <mt-field :placeholder="unameHolder" v-model="uname" class="myinput" type="text"></mt-field>
      <!-- 密码 -->
      <mt-field :placeholder="upwdHolder" v-model="upwd" class="myinput" type="password"></mt-field>
      <!-- 二次密码 -->
      <mt-field :placeholder="aupwdHolder" v-model="aupwd" class="myinput" type="password"></mt-field>
      <!-- 手机号 -->
      <mt-field :placeholder="phoneHolder" v-model="phone" class="myinput" type="text"></mt-field>
      <!-- 邮箱 -->
      <mt-field :placeholder="emailHolder" v-model="email" class="myinput" type="text"></mt-field>
      <!-- 头像路径 -->
      <mt-field :placeholder="avatarHolder" v-model="avatar" class="myinput" type="text"></mt-field>
      <!-- 真实姓名 -->
      <mt-field :placeholder="usernameHolder" v-model="username" class="myinput" type="text"></mt-field>
      <!-- 性别 -->
      <mt-field :placeholder="genderHolder" v-model="gender" class="myinput" type="text"></mt-field>
      <!-- 注册按钮-->
      <mt-button size="large" class="mybutton" @click="register">注册</mt-button>
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
         emailHolder:"请输入邮箱",
         avatarHolder:"请输入头像路径",
         usernameHolder:"请输入真实姓名",
         genderHolder:"请输入性别",
         uname:"",
         upwd:"",
         aupwd:"",
         phone:"",
         email:"",
         avatar:"",
         username:"",
         gender:"",
       }
     },
     methods:{
      onClickLeft() {
        this.$router.push("/Index");
      },
      onClickRight() {
        this.$router.push("/Search");
      },
       register(){
         //完成登录
         //1:获取用户名和密码
         var uname = this.uname;
         var upwd = this.upwd;
         var aupwd = this.aupwd;
         var phone=this.phone;
         var email=this.email;
         var avatar=this.avatar;
         var username=this.username;
         var gender=this.gender;
         //2:创建一个正则表达式
         //  字母数字下划3~12
  var reg = /^[a-z0-9_-]{3,12}$/i;
      //3:验证用户名 出错提示 53
      if(!reg.test(uname)){
       this.$toast("用户名格式不正确");
      return;
      }
      //4:验证密码   出错提示
     if(!reg.test(upwd)){
      this.$toast("密码格式不正确");
      return;
     }
     if(upwd!==aupwd){
      this.$toast("二次密码不一致");
      return;
     }
     //5:发送ajax请求 axios
     var url = "register";
     var obj = {uname:uname,upwd:upwd,aupwd:aupwd,phone:phone,email:email,avatar:avatar,username:username,gender:gender};
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
.titlebar{
  width: 100%;
  height: 50px;
}
.login_container{
  text-align: center;
}
.myinput{
  /* background: #ddd; */
}
.mybutton{
  background: #0aa1ed;
  color: #fff;
}
</style>