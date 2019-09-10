<template>
    <div class="titlebar">
        <van-nav-bar title="" left-text="返回" left-arrow @click-left="onClickLeft" @click-right="onClickRight">
            <van-icon name="search" slot="right" />
        </van-nav-bar>
    </div>
</template>
<script>
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
        }
    }
</script>
<style scoped>
    .titlebar{
        width: 100%;
        height: 50px;
    }
</style>