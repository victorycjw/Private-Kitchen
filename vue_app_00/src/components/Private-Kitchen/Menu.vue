<template>
   <div>
        <div class="titlebar">
            <van-nav-bar title="菜谱" left-text="返回" left-arrow @click-left="onClickLeft" @click-right="onClickRight">
                <van-icon name="search" slot="right" />
            </van-nav-bar>
        </div>
        <div>
            <ul class="menu" @click="onlyactive" id="lis">
                <li data-active="menu-1">主食</li>
                <li data-active="menu-2">菜系</li>
                <li data-active="menu-3">药食</li>
                <li data-active="menu-4">烘焙</li>
                <li data-active="menu-5">场合</li>
                <li data-active="menu-6">节日</li>
            </ul>
            <div>
                <mt-tab-container v-model="active">
                    <mt-tab-container-item id="menu-1">
                        <Content></Content>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="menu-2">
                        <Contentt></Contentt>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="menu-3">
                        <Contenttt></Contenttt>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="menu-4">
                        <Contentttt></Contentttt>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="menu-5">
                        <Contenttttt></Contenttttt>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="menu-6">
                        <Contentttttt></Contentttttt>
                    </mt-tab-container-item>
                </mt-tab-container>
            </div>
        </div>
   </div>
</template>
<script>
import Content from './Content_1.vue'
import Contentt from './Content_2.vue'
import Contenttt from './Content_3.vue'
import Contentttt from './Content_4.vue'
import Contenttttt from './Content_5.vue'
import Contentttttt from './Content_6.vue'
export default {
   data() {
        return {
            active:"menu-1"
        }
    },
   components:{
      "Content":Content,
      "Contentt":Contentt,
      "Contenttt":Contenttt,
      "Contentttt":Contentttt,
      "Contenttttt":Contenttttt,
      "Contentttttt":Contentttttt,
   },
   methods:{
        onClickLeft() {
            this.$router.push("/Index");
        },
        onClickRight() {
            this.$router.push("/Search");
        },
        onlyactive(e){
            var ul=e.target;
            var menu=ul.dataset.active;
            for (var i of lis.children){
                if(i!=e.target){
                    i.style="border-left:5px solid #f4f4f4";
                }
            }
            this.active=menu;
            ul.style.border="1px solid #f4f4f4";
            ul.style.backgroundColor="#fff";
            ul.style.borderLeft="3px solid red";
            ul.style.color="red";
      }
        // onlyactive(e){
        //     if(e.target.nodeName=='LI'){
        //         this.active=e.target.dataset.active;
        //         var elems=e.target.parentNode.children;
        //         for(var elem of elems){
        //             if(elem.innerHTML==e.target.innerHTML){
        //                 e.target.style.color='red';
        //                 e.target.style.borderleft='2px solid red';
        //             }else{
        //                 e.target.style.color='#000';
        //                 e.target.style.borderleft='none';
        //             }
        //         }
        //     }
        // }
   }
}
</script>
<style scoped>
.titlebar{
    width: 100%;
    height: 50px;
}

*{
   padding:0;
   margin: 0;
   box-sizing: border-box;
}
ul>li{
   list-style: none;
}
.menu{
   background: #f4f4f4;
   padding:41px 0 0px 0;
   overflow-y: scroll;
   box-sizing: border-box;
   width:83px;
   text-align: center;
}
.menu>li{
   width: 100%;
   padding:20px 5px;
   font-size: 16px;
   font-family: "楷体";
   border-left: 3px solid #f4f4f4;
}
.mint-tab-container-item{
   position: fixed;;
   top:41px;
   left: 83px;
   width:291px;
   height: 87%;
   padding: 10px;
   z-index: 100px;
   overflow-y: scroll;
   overflow-x: hidden;
}
</style>