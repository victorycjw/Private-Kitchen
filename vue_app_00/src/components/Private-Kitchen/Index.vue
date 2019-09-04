<template>
    <!-- 主页 -->
    <div>
        <mt-tab-container v-model="active">
            <!-- 首页推荐 -->
            <mt-tab-container-item id="v">
                <!-- 头部 -->
                <titlebar></titlebar>
                <!-- 轮播图 -->
                <carousel></carousel>
                <!-- 分类按钮 -->
                <Button></Button>
                <!-- Tab -->
                <tabcarousel class="tabcarousel"></tabcarousel>
                <!-- 推荐好物 -->
            </mt-tab-container-item>
            <!-- 菜谱 -->
            <mt-tab-container-item id="menu">
                <Menu></Menu>
            </mt-tab-container-item>
            <!--分类 -->
            <mt-tab-container-item id="add">
            </mt-tab-container-item>
            <!-- 购物车 -->
            <mt-tab-container-item id="cart">
                <cart></cart>
            </mt-tab-container-item>
            <!-- 我的 -->
            <mt-tab-container-item id="me">
                <me></me>
            </mt-tab-container-item>
        </mt-tab-container>
        <!-- 底部导航栏 -->
        <mt-tabbar v-model="active" fixed>
            <mt-tab-item id="v" @click.native="change(0)">
               <bottombar :selImg="require('../../assets/tab/index_active.png')" :noImg="require('../../assets/tab/index.png')" :focused="currentIndex[0].isSelect"></bottombar>  
                首页
            </mt-tab-item >
            <mt-tab-item id="menu" @click.native="change(1)">
                 <bottombar :selImg="require('../../assets/tab/menu_active.png')" :noImg="require('../../assets/tab/menu.png')" :focused="currentIndex[1].isSelect" ></bottombar>
                 菜谱
            </mt-tab-item>
            <mt-tab-item id="add" @click.native="change(2)">
                 <bottombar :selImg="require('../../assets/tab/+_active.png')" :noImg="require('../../assets/tab/+.png')" :focused="currentIndex[2].isSelect" ></bottombar>
            </mt-tab-item>
            <mt-tab-item id="cart" @click.native="change(3)">
                 <bottombar :selImg="require('../../assets/tab/cart_active.png')" :noImg="require('../../assets/tab/cart.png')" :focused="currentIndex[3].isSelect"></bottombar>
                 购物车
            </mt-tab-item>
              <mt-tab-item id="me" @click.native="change(4)">
                 <bottombar :selImg="require('../../assets/tab/me_active.png')" :noImg="require('../../assets/tab/me.png')" :focused="currentIndex[4].isSelect"></bottombar>
                 我的
            </mt-tab-item>
        </mt-tabbar>
    </div>
</template>
<script>
// 头部搜索
import titlebar from "./Titlebar.vue"
// 轮播图
import carousel from "./Carousel.vue"
// 分类按钮
import Button from "./Button.vue"
// Tab选项卡
import tabcarousel from "./Tabcarousel.vue"
// 底部导航栏
import bottombar from "./Bottombar.vue";
    // 菜谱
    import Menu from "./Menu.vue";
    // 购物车
    import cart from "./Cart.vue";
    // 我的
    import me from "./me.vue"

// 登陆页面
// import login from "./Login.vue";
export default {
    data(){
        return{
            active:"v",
            currentIndex:[
                {isSelect:true},
                {isSelect:false},
                {isSelect:false},
                {isSelect:false},
                {isSelect:false}
            ]  
        }
    },
    components:{
        // "login":login,
        "titlebar":titlebar,
        "carousel":carousel,
        "tabcarousel":tabcarousel,
        "Button":Button,
        "bottombar":bottombar,
        "Menu":Menu,
        "cart":cart,
        "me":me,
    },
    methods: {
        change(n){
           //1.n当前按钮下标
            //2.创建循环数据
            //3.如果当前下标与参数一致
            for(var i=0;i<this.currentIndex.length;i++){
                if(n==i){
                    this.currentIndex[i].isSelect=true;
                }else{
                    this.currentIndex[i].isSelect=false
                }           
            }
        }
    },
}
</script>
<style scoped>
/* 修改tabbar默认修改颜色 */
.mit-tabbar>.mint-tab-item{
    color:#999999;
}
/* 修改tabbar默认选中的颜色 */
.mint-tabbar>.mint-tab-item.is-selected{
   background-color: transparent;
   color:#f00;
}
.tabcarousel{
    margin-top: 50px;
}
</style>