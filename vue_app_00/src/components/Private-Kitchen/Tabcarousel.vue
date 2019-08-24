<template>
    <van-tabs v-model="active" swipeable>
        <van-tab :title="'推荐'">
            <!-- 推荐 -->
            <recommend></recommend>
        </van-tab>
        <van-tab :title="'关注'">
            <!-- 关注 -->
            <attention></attention>
        </van-tab>
        <van-tab :title="'美食社区'">
            <!-- 美食社区 -->
            <community></community>
        </van-tab>
        <van-tab :title="'厨房技巧'">
            <!-- 厨房技巧 -->
            <skill></skill>
        </van-tab>
        <van-tab :title="'烘焙'">
            <!-- 烘焙 -->
            <bakery></bakery>
        </van-tab>
        <van-tab :title="'美食圈'">
            <!-- 美食圈 -->
            <foodcity></foodcity>
        </van-tab>
    </van-tabs>
</template>
<script>
import recommend from "./Recommend.vue"
import attention from "./Attention.vue"
import community from "./Community.vue"
import skill from "./Skill.vue"
import bakery from "./Bakery.vue"
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
            "bakery":bakery,
            "foodcity":foodcity,
        },
}
</script>
<style scoped>

</style>