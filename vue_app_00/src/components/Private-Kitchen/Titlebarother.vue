<template>
    <!-- 搜索框：mysearch -->
    <div class="mysearch">
        <!-- 调用vant组件：van-search -->
        <!-- show-action：是否在搜索框右侧显示取消按钮 -->
        <!-- shape：形状，可选值为 round -->
        <van-search 
            v-model="value" 
            placeholder="请输入搜索关键词" 
            show-action 
            shape="round"
            @click="search">
            <div slot="action" @click="onBack">返回</div>
        </van-search>
    </div>
</template>
<script>
export default {
    props:{
    },
    data(){
        return{
            value:""
        }
    },    
    methods: {
        search(){
            this.$router.push("/Search");
        },
        onBack(){
            this.$router.push("/Index");
        },
    },
}
</script>
<style scoped>
   .mysearch{
        height: 54px;
        width: 100%;
        /* margin-bottom: 10px; */
    }
</style>