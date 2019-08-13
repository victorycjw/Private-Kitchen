<template>
    <div>
        <mt-navbar v-model="active" fixed>
            <mt-tab-item id="recommend" >推荐</mt-tab-item>
            <mt-tab-item id="attention">关注</mt-tab-item>
            <mt-tab-item id="community">美食社区</mt-tab-item>
            <mt-tab-item id="skill">厨房技巧</mt-tab-item>
            <mt-tab-item id="bake">烘焙</mt-tab-item>
            <mt-tab-item id="foodcity">美食圈</mt-tab-item>
        </mt-navbar>
        <!-- 面板 -->
        <mt-tab-container v-model="active">
            <mt-tab-container-item id="recommend">
                <!-- 美食推荐 -->
            </mt-tab-container-item>
            <mt-tab-container-item id="attention">
                <!-- 首页关注人 -->
            </mt-tab-container-item>
            <mt-tab-container-item id="community">
                <!-- 美食社区 -->
            </mt-tab-container-item>
            <mt-tab-container-item id="skill">
                <!-- 厨房技巧 -->
            </mt-tab-container-item>
            <mt-tab-container-item id="bake">
                <!-- 烘焙 -->
            </mt-tab-container-item>
            <mt-tab-container-item id="foodcity">
                <!-- 美食圈 -->
            </mt-tab-container-item>
        </mt-tab-container>
    </div>
</template>
<script>
// 第二个华为专场界面
// import selepage from "./second_phone.vue"
// 第三荣耀专区
// import honor from "./3honor.vue"
export default {
    data(){
        return{active:"attention"}
    },
     methods:{
    },
    components:{
        // "selepage":selepage,
        // "honor":honor
    }
}
</script>
<style scoped>
.mint-navbar{
    margin-top:180px;
}
.mint-navbar .mint-tab-item.is-selected {
    border-bottom: 3px solid #f00;
    color: #f00;
    margin-bottom: -3px;
}
</style>