<template>
    <div>
        <img :src="focused?selImg:noImg" alt="" class="firstImg">
    </div>
</template>
<script>
    export default {
        props:{focused:false,
           selImg:{default:""},
           noImg:{default:""}
        },
        data(){
            return{}
        }
    }
</script>
<style scoped>
  .firstImg{
      width:30px;
      height:30px;
  }  
</style>