<template>
    <div class="header-top">
        <span class="left-pic"><img src="../../assets/notlogin.png" alt="" @click="login"></span>
        <img class="i-img" src="../../assets/search.png" alt="">
        <input type="text" placeholder="搜索：">
        <span class="right-pic"><img src="../../assets/cart.png" alt="" @click="cart"></span>
    </div>
</template>
<script>
export default {
    props:{
    },
    data(){
        return{
            count:0
        }
    },    
    methods: {
        login(){
            this.$router.push("/Login");
        },
        cart(){
            this.$router.push("/Cart");
        },
    },
}
</script>
<style scoped>
.header-top{
   background: linear-gradient(90deg,#39da85,#01b27a);
   width:100%;
   padding:5px 10px;
   align-items: center;
   position: fixed;
   top:0;
   left: 0;
   z-index: 100;
}
.i-img{
   position: fixed;
   top:11px;
   left:55px;
   width:23px;
   height:23px;
}
input{
   width:60%;
   padding:8px 30px 8px;
   border:none;
   border-radius: 25px;
   margin-left:16px;
   outline: 0;
}
.left-pic .right-pix{
    width: 24px;
    height: 24px;
    margin-top: 10px;
}
</style>