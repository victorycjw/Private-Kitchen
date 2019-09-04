<template>
    <!-- 自定义宫格：mygrid-->
    <div class="mygrid">
        <!-- 调用vant组件：van-swipe -->
        <van-swipe>
            <van-swipe-item>
                <!-- 调用vant组件：van-grid -->
                <!-- column-num：列数 -->
                <van-grid :column-num="3">
                    <van-grid-item
                        :icon="require('../../assets/button/Menu.svg')"
                        text="菜谱分类"
                        @click="Menu"
                    />
                    <van-grid-item
                        :icon="require('../../assets/button/Meals.svg')"
                        text="三餐"
                        @click="Meals"
                    />
                    <van-grid-item
                        :icon="require('../../assets/button/CartShop.svg')"
                        text="菜谱商城"
                        @click="CartShop"
                    />
                    <van-grid-item
                        :icon="require('../../assets/button/HomeDishes.svg')"
                        text="家常菜"
                        @click="HomeDishes"
                    />
                    <van-grid-item
                        :icon="require('../../assets/button/Bakery.svg')"
                        text="烘焙"
                        @click="Cure"
                    />
                    <van-grid-item
                        :icon="require('../../assets/button/Crown.svg')"
                        text="佳作"
                        @click="Crown"
                    />
                </van-grid>         
            </van-swipe-item>
        </van-swipe>
    </div>
</template>
<script>
    export default{
        methods: {
            Menu(){
                this.$router.push("/Menu")
            },
            Meals(){
                this.$router.push("/Meals")
            },
            CartShop(){
                this.$router.push("/CartShop")
            },
            HomeDishes(){
                this.$router.push("/HomeDishes")
            },
            Cure(){
                this.$router.push("/Bakery")
            },
            Crown(){
                this.$router.push("/Crown")
            }
        },
    }
</script>
<style>
    .mygrid{
        width: 100%;
        height: 120px;
    }
</style>