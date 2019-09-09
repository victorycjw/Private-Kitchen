<template>
    <div>
        <div class="titlebar">
            <van-nav-bar title="我的" left-text="返回" left-arrow @click-left="onClickLeft" @click-right="onClickRight">
                <van-icon name="search" slot="right" />
            </van-nav-bar>
        </div>
        <table border="0" width="100%" height="300px" margin-top="100px">
            <tr style="text-align:center">
                <td>
                    <img src="../../assets/notlogin.png" alt="notogin">
                </td>
                <td>
                    <span @click="login" style="margin-right:20px;">登陆</span>
                    <span @click="register" style="margin-left:20px;">注册</span>
                </td>
            </tr>
            <tr style="text-align:center">
                <td>
                    <a href="#">菜谱</a>
                </td>
                <td>
                    <a href="#">关注</a>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <a href="./Order.vue">我的订单</a>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <coupon></coupon>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <a href="#">我的收藏</a>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <a href="#">浏览历史</a>
                </td>
            </tr>
        </table>
    </div>
</template>
<script>
import coupon from "./Coupon.vue"
export default {
    data() {
        return {
            
            }
    },
    components:{
        "coupon":coupon
    },
    methods:{
        onClickLeft() {
            this.$router.push("/Index");
        },
        onClickRight() {
            this.$router.push("/Search");
        },
        login(){
            this.$router.push("/Login");
        },
        register(){
            this.$router.push("/Register");
        }
    }
}
</script>
<style scoped>
.titlebar{
    width: 100%;
    height: 50px;
}
a{
    padding: 20px;
    font-size:16px;
}
</style>