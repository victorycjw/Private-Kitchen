<template>
    <div>
        <div class="mar">
            <div class="queue">
                <a href="javacript:;" @click="Menu">
                    <img src="../../img/button/Menu.svg" alt="">
                </a>
            </div>
            <div class="queue">菜谱分类</div>
        </div>
        <div class="mar">
            <div class="queue">
                <a href="javacript:;" @click="Menu">
                    <img src="../../img/button/Restaurant.svg" alt="">
                </a>
            </div>
            <div class="queue">三餐</div>
        </div>
        <div class="mar">
            <div class="queue">
                <a href="javacript:;" @click="Menu">
                    <img src="../../img/button/Shop.svg" alt="">
                </a>
            </div>
            <div class="queue">菜谱商城</div>
        </div>
        <div class="mar">
            <div class="queue">
                <a href="javacript:;" @click="Menu">
                    <img src="../../img/button/HomeDishes.svg" alt="">
                </a>
            </div>
            <div class="queue">家常菜</div>
        </div>
        <div class="mar">
            <div class="queue">
                <a href="javacript:;" @click="Menu">
                    <img src="../../img/button/cake.svg" alt="">
                </a>
            </div>
            <div class="queue">烘焙</div>
        </div>
        <div class="mar">
            <div class="queue">
                <a href="javacript:;" @click="Menu">
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
            }
        },
    }
</script>
<style>
    .queue{
        display: flex;
        justify-content: space-around;
    }
    .mar{
        float: left;
        margin: 0 30px;
    }
</style>