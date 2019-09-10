<template>
    <div>
        <div class="titlebar">
            <van-nav-bar title="家常菜" left-text="返回" left-arrow @click-left="onClickLeft" @click-right="onClickRight">
                <van-icon name="search" slot="right" />
            </van-nav-bar>
        </div>
        <recommend></recommend>
    </div>
</template>
<script>
import recommend from "./Recommend.vue"
    export default {
        data() {
            return {
                
            }
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
</style>