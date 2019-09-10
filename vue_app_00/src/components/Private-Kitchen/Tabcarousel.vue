<template>
    <van-tabs v-model="active" swipeable>
        <van-tab :title="'推荐'">
            <!-- 推荐 -->
            <recommend></recommend>
        </van-tab>
        <van-tab :title="'关注'">
            <!-- 关注 -->
            <!-- <attention></attention> -->
            <recommend></recommend>
        </van-tab>
        <van-tab :title="'美食社区'">
            <!-- 美食社区 -->
            <!-- <community></community> -->
            <recommend></recommend>
        </van-tab>
        <van-tab :title="'厨房技巧'">
            <!-- 厨房技巧 -->
            <!-- <skill></skill> -->
            <recommend></recommend>
        </van-tab>
        <van-tab :title="'美食圈'">
            <!-- 美食圈 -->
            <!-- <foodcity></foodcity> -->
            <recommend></recommend>
        </van-tab>
    </van-tabs>
</template>
<script>
import recommend from "./Recommend.vue"
import attention from "./Attention.vue"
import community from "./Community.vue"
import skill from "./Skill.vue"
import foodcity from "./Foodcity.vue"
    export default {
        data(){
            return{active:"recommend"}
        },
        components:{
            "recommend":recommend,
            "attention":attention,
            "community":community,
            "skill":skill,
            "foodcity":foodcity,
        },
}
</script>
<style scoped>
    
</style>