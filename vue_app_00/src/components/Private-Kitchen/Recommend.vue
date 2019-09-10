<template>
    <div class="cartshop-app">
        <!-- CartShop.vue -->
        <!-- 一个商品 循环 -->
        <div class="goods-item" v-for="(item,i) of list" :key="i">
            <img v-lazy="'http://127.0.0.1:3000/'+item.proDraw">
            <div class="detail">{{item.cname}}</div>
            <div class="info">
                <span>{{item.username}}</span>
                <span style="float:right">{{item.zan}}</span>
            </div>
        </div>
    </div>
</template>
<script>
// 下拉刷新
export default {
    data(){
        return{
            list:[],  //商品列表数组
        }
    },
    components:{
        
    },
    created(){
        this.loadMore();
        // console.log("1.created组件创建成功");
    },
    methods:{
        onClickLeft() {
            this.$router.push("/Index");
        },
        onClickRight() {
            this.$router.push("/Search");
        },
        loadMore(){
            //获取商品分页的数据
            //1.发送请求
            var url="cai";
            this.axios.get(url).then(res=>{                           
            //2.获取服务器返回结果
            // console.log(res.data.data);
            //3.将返回结果保存
            //4.拼接多页内容
            var rows=this.list.concat(res.data.data);            
            //5.将结果复制给list
            this.list=rows;
            // console.log(this.list);
            })
        },
    }
}
</script>
<style scoped>
    .cartshop-app{
        display:flex;/*指定当前元素弹性布局*/
        flex-wrap:wrap;/*指定子元素换行*/
        justify-content: space-between;
        padding:4px;
        background-color: #F5F5F5;
    }
    .goods-item{
        width:49%; /*指定商品元素宽度*/
        /* 商品外灰色边框 */
        border:1px solid #ccc;
        border-radius:5px;/*指定元素圆角*/
        background-color:#fff;
        margin:2px 0;
        padding:2px;
        box-sizing: border-box; 
        display: flex;
        flex-direction:column;
        min-height:247px;/*最小高度*/
    }
    .goods-item img{
        width:100%;
    }
    .detail{
        padding:5px;
        font-size:15px;
        font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    }
    .info{
        font-size:15px;
        color:rgb(221, 23, 23);
        padding-bottom:5px;
    }
</style>