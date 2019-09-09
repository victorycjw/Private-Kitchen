<template>
    <div class="container">
        <span class="article">本帮菜</span>
        <span class="article">川菜</span>
        <span class="article">湘菜</span>
        <span class="article">客家菜</span>
        <span class="article">京菜</span>
        <span class="article">清真</span>
        <span class="article">西餐</span>
        <span class="article">日式料理</span>
        <span class="article">意大利菜</span>
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