<template>
    <div class="container">
        <div class="opus" v-for="(item,i) of list" :key="i">
        <!-- <a href="./CartShop.vue" class="opus"> -->
            <div class="img">
                <img src="../../assets/dishes/anranxiaohunfan.png" alt="">
            </div>
            <div>
                黯然销魂饭
            </div>
            <div>
                <span>id:</span>
                <span style="float:right">2195</span>
            </div>
        </div>
        
        <div class="opus">
            <div class="img">
                <img src="../../assets/dishes/anranxiaohunfan.png" alt="">
            </div>
            <div>
                黯然销魂饭
            </div>
            <div>
                <span>id:</span>
                <span style="float:right">2195</span>
            </div>
        </div>

        <div class="opus">
            <div class="img">
                <img src="../../assets/dishes/anranxiaohunfan.png" alt="">
            </div>
            <div>
                黯然销魂饭
            </div>
            <div>
                <span>id:</span>
                <span style="float:right">2195</span>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            list:[],  //图片列表数组
            pno:0     //页码（第几页）
        }
    },
}
</script>
<style scoped>
    .container{
        display: flex;
        flex-flow:row nowrap;
        justify-content:space-around;
        height: 1000px;
    }
    .opus{
        margin-top: 20px;
        width: 160px;
        height: 220px;
    }
    .img{
        overflow: hidden;
    }
</style>