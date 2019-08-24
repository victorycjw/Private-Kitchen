<template>
    <div class="button">
        <div class="mar_4">
            <div class="queue">
                <a href="javacript:;" @click="Menu">
                    <img src="../../img/button/Menu.svg" alt="">
                </a>
            </div>
            <div class="queue">菜谱分类</div>
        </div>
        <div class="mar_2">
            <div class="queue">
                <a href="javacript:;" @click="Meals">
                    <img src="../../img/button/Meals.svg" alt="">
                </a>
            </div>
            <div class="queue">三餐</div>
        </div>
        <div class="mar_4">
            <div class="queue">
                <a href="javacript:;" @click="Cart">
                    <img src="../../img/button/Cart.svg" alt="">
                </a>
            </div>
            <div class="queue">菜谱商城</div>
        </div>
        <div class="mar_3">
            <div class="queue">
                <a href="javacript:;" @click="HomeDishes">
                    <img src="../../img/button/HomeDishes.svg" alt="">
                </a>
            </div>
            <div class="queue">家常菜</div>
        </div>
        <div class="mar_2">
            <div class="queue">
                <a href="javacript:;" @click="Cure">
                    <img src="../../img/button/Cure.svg" alt="">
                </a>
            </div>
            <div class="queue">烘焙</div>
        </div>
        <div class="mar_2">
            <div class="queue">
                <a href="javacript:;" @click="Crown">
                    <img src="../../img/button/Crown.svg" alt="">
                </a>
            </div>
            <div class="queue">佳作</div>
        </div>
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
            Cart(){
                this.$router.push("/Cart")
            },
            HomeDishes(){
                this.$router.push("/HomeDishes")
            },
            Cure(){
                this.$router.push("/Cure")
            },
            Crown(){
                this.$router.push("/Crown")
            }
        },
    }
</script>
<style>
    .button{
        width: 100%;
        height: 120px;
        margin-top: 10px;
    }
    .queue{
        display: flex;
        justify-content: space-around;
    }
    .mar_2{
        float: left;
        margin: 0 46px;
    }
    .mar_3{
        float: left;
        margin: 0 38px;
    }
    .mar_4{
        float: left;
        margin: 0 30px;
    }
</style>