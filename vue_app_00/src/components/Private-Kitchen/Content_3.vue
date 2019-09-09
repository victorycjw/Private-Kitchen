<template>
    <div class="container">
        <span class="article">燕窝</span>
        <span class="article">银耳</span>
        <span class="article">阿胶</span>
        <span class="article">橙皮</span>
        <span class="article">板蓝根</span>
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