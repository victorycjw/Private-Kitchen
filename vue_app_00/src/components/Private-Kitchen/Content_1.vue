<template>
    <div class="container">
        <span class="article">炒饭</span>
        <span class="article">包子</span>
        <span class="article">面条</span>
        <span class="article">饭团</span>
        <span class="article">煲仔饭</span>
        <span class="article">窝窝头</span>
        <span class="article">饺子</span>
        <span class="article">混沌</span>
        <span class="article">盖浇饭</span>
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