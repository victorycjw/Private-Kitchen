<template>
    <div>
        <mt-swipe :auto="4000" @change="handleChange">
            <mt-swipe-item></mt-swipe-item>
            <mt-swipe-item></mt-swipe-item>
            <mt-swipe-item></mt-swipe-item>
            <mt-swipe-item></mt-swipe-item>
            <mt-swipe-item></mt-swipe-item>
            <mt-swipe-item></mt-swipe-item>
            <!-- <mt-swipe-item></mt-swipe-item>
            <mt-swipe-item></mt-swipe-item> -->
        </mt-swipe>
    </div>
</template>
<script>
export default {
    data(){
        return{
        }
    },
    methods: {
        handleChange(){
        }
    },
}
</script>
<style scoped>
.mint-swipe .mint-swipe-indicator{
    width: 8px;
    height: 8px;
    display: inline-block;
    border-radius: 100%;
    background: #000 !important;
    opacity: 0 !important;
    margin: 0 3px;
}
.mint-swipe-indicator.is-active {
    background: #ffff00;
}
.mint-swipe {
    position: relative;
    height: 140px;
    margin-top:40px;
}
.mint-swipe-items-wrap .mint-swipe-item{
    background-repeat:no-repeat;
    background-size:100% 140px;  
    border-radius: 15px;
}
.mint-swipe-items-wrap .mint-swipe-item:first-child {
    background-image: url('../../img/carousel/Rotary-Planting-Map-1.jpg');
}
.mint-swipe-items-wrap .mint-swipe-item:nth-child(2){
    background-image: url('../../img/carousel/Rotary-Planting-Map-2.jpg'); 
}
.mint-swipe-items-wrap .mint-swipe-item:nth-child(3){
    background-image: url('../../img/carousel/Rotary-Planting-Map-3.jpg'); 
}
.mint-swipe-items-wrap .mint-swipe-item:nth-child(4){
    background-image: url('../../img/carousel/Rotary-Planting-Map-4.jpg'); 
}
.mint-swipe-items-wrap .mint-swipe-item:nth-child(5){
    background-image: url('../../img/carousel/Rotary-Planting-Map-5.jpg'); 
}
.mint-swipe-items-wrap .mint-swipe-item:nth-child(6){
    background-image: url('../../img/carousel/Rotary-Planting-Map-6.jpg'); 
}
/* .mint-swipe-items-wrap .mint-swipe-item:nth-child(7){
    background-image: url('../../img/carousel/Rotary-Planting-Map-5.jpg'); 
}
.mint-swipe-items-wrap .mint-swipe-item:nth-child(8){
    background-image: url('../../img/carousel/Rotary-Planting-Map-5.jpg'); 
} */
</style>