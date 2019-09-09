<template>
    <div class="container">
        <span class="article">蛋糕</span>
        <span class="article">月饼</span>
        <span class="article">泡芙</span>
        <span class="article">甜甜圈</span>
        <span class="article">蛋挞</span>
        <span class="article">派</span>
        <span class="article">曲奇</span>
        <span class="article">慕斯</span>
        <span class="article">马卡龙</span>
        <span class="article">披萨</span>
        <span class="article">杯子蛋糕</span>
    </div>
</template>
<style scope>
span{
    color: black;
    font-size: 20px;
    font-family: "楷体";
    text-decoration: none;
}
.container{
    display: flex;
    flex-flow:row wrap;
    justify-content:space-around;
}
.article{
    width: 60px;
    height: 20px;
    text-align: center;
    padding: 10px;
    box-shadow: 2px 2px 2px #ccc;
}
</style>