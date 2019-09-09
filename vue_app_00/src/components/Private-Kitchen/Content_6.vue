<template>
    <div class="container">
        <span class="article">元旦节</span>
        <span class="article">年夜饭</span>
        <span class="article">春节</span>
        <span class="article">元宵节</span>
        <span class="article">端午节</span>
        <span class="article">中秋节</span>
        <span class="article">七夕节</span>
        <span class="article">圣诞节</span>
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