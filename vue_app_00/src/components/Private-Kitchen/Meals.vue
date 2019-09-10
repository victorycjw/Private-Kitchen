<template>
    <div>
        <div class="titlebar">
            <van-nav-bar title="三餐" left-text="返回" left-arrow @click-left="onClickLeft" @click-right="onClickRight">
                <van-icon name="search" slot="right" />
            </van-nav-bar>
        </div>
        <van-tabs v-model="active" swipeable>
            <van-tab :title="'早餐'">
                <!-- 推荐 -->
                <recommend></recommend>
            </van-tab>
            <van-tab :title="'午餐'">
                <!-- 关注 -->
                <!-- <attention></attention> -->
                <recommend></recommend>
            </van-tab>
            <van-tab :title="'晚餐'">
                <!-- 美食社区 -->
                <!-- <community></community> -->
                <recommend></recommend>
            </van-tab>
        </van-tabs>
    </div>
</template>
<script>
import recommend from "./Recommend.vue"
    export default {
        data() {
            return{active:"recommend"}
        },
        methods:{
            onClickLeft() {
                this.$router.push("/Index");
            },
            onClickRight() {
                this.$router.push("/Search");
            },
        },
        components:{
            "recommend":recommend,
        }
    }
</script>
<style scoped>
    .titlebar{
        width: 100%;
        height: 50px;
    }
    .can{

        text-align: center;
    }
</style>