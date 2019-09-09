<template>
    <div class="container">
        <span class="article">早餐</span>
        <span class="article">早茶</span>
        <span class="article">午餐</span>
        <span class="article">下午茶</span>
        <span class="article">晚餐</span>
        <span class="article">夜宵</span>
        <span class="article">春节菜谱</span>
        <span class="article">夏季菜谱</span>
        <span class="article">秋季菜谱</span>
        <span class="article">冬季菜谱</span>
        <span class="article">二人菜谱</span>
        <span class="article">户外菜谱</span>
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