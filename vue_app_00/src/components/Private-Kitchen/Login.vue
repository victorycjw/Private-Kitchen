<template>
    <div class="login_container">
      <!--pk/Login.vue-->
      <div class="titlebar">
        <van-nav-bar title="登陆" left-text="返回" left-arrow @click-left="onClickLeft" @click-right="onClickRight">
          <van-icon name="search" slot="right" />
        </van-nav-bar>
      </div>
      <!--用户名-->
      <mt-field :placeholder="unameHolder" v-model="uname" class="myinput" type="text"></mt-field>
      <!--密码-->
      <mt-field :placeholder="upwdHolder" v-model="upwd" class="myinput" type="password"></mt-field>
      <!--登录按钮-->
      <mt-button size="large" class="mybutton" @click.native="login">登录</mt-button>
    </div>  
  </template>
  <script>
   export default {
     data(){
       return {
         unameHolder:"请输入用户名",
         upwdHolder:"请输入密码",
         uname:"",
         upwd:""
       }
     },
     methods:{
      onClickLeft() {
        this.$router.push("/Index");
      },
      onClickRight() {
        this.$router.push("/Search");
      },
      login(){
        //完成登录
        //1:获取用户名和密码
        var u = this.uname;
        var p = this.upwd;
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
     var url = "login";
     var obj = {uname:u,upwd:p};
     this.axios.get(url,{params:obj}).then(
       res=>{
       //1:判断服务器返回结果
       //2:code:>0 跳转Home1组件
       if(res.data.data==-1){
          this.$toast("用户名和密码有误");            
          //登录失败  提示
        }else{
          //登录成功  跳转商品首页
          this.$router.push("/Me");
        }
      //  if(result.data.code > 0){
      //     this.$router.push("/");
      //  }else{
      //     this.$messagebox("提示","用户名或密码有误");
      //  }
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
  margin: 0 auto;
  text-align: center;
  /* background:#ddd; */
}
.mybutton{
  background: #0aa1ed;
  color: #fff;
}
</style>