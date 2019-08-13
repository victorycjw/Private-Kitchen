<template>
    <div>
        <!-- 父组件 -->
    <titlelar :login_pic="require('../../img/menu (1).svg')" :cart_pic="require('../../img/menu (2).svg')" :search="require('../../img/menu (2).svg')" :login="login" :cart="cart">
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
            
        },
        cart(){
            
        },  
    },
    components:{
        "titlelar":titlelar
    }
}
</script>