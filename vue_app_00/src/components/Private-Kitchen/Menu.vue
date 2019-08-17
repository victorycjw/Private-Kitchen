<template>
    <div>
        <menutop></menutop>
        <!-- <menumiddle></menumiddle> -->
    </div>
</template>

<script>
    // 头部搜索
    import menutop from './Search.vue'
    // 
    export default {
        data(){
            return{

            };
        },
        components:{
            "menutop":menutop,
            // "menumiddle":menumiddle
        }
    }
</script>

<style>

</style>