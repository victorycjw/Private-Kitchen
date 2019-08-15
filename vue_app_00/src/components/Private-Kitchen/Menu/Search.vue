<template>
    <div class="page-search">
        <mt-search autofocus cancel-text="X" v-model="value"></mt-search>
    </div>
</template>

<script>
    export default {
        name: 'page-search',
        data(){
            return{
                value:''
            };
        }
    }
</script>

<style>
    .mint-searchbar-inner .mintui-search{
        position:relative;
        top:2px;
    }
</style>


