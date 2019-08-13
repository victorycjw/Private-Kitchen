<template>
    <div>
    <!-- 父组件 -->
    <titlelar :login_pic="require('../../img/notlogin.png')" :cart_pic="require('../../img/cart.png')" :login="login" :cart="cart">
    </titlelar>
    </div>
</template>
<script>
// 引入子组件
import titlelar from "./Titlelar-content.vue"
export default {
    data(){
        return{}
    },
    methods: {
        login(){
            this.$router.push("/Login");
        },
        cart(){
            this.$router.push("/Cart");
        },  
    },
    components:{
        "titlelar":titlelar
    }
}
</script>