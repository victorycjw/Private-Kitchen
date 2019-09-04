<template>
    <div class="cart">
        <titlebarother></titlebarother>
        <div class="list">
            <table></table>
        </div>
        <div>
            <!-- Cart.vue组件 -->
            <!-- <h1>Cart.vue</h1> -->            
            <!-- 购物车商品信息 -->
            <div class="cart-item" v-for="(item,i) of list" :key="i">
                <div class="leftImgText">
                    <input class="cb" type="checkbox" v-model="item.cb">
                    <img :src="item.img_url">
                    <div class="lname">{{item.lname}}</div>
                    <div class="price">                    
                        ￥{{item.price}}                   
                    </div>
                </div>
                <mt-button class="btn" size="small" @click.native="reCount" :data-count="item.count"  :data-id="item.id">-</mt-button>
                <span>{{item.count}}</span>
                <mt-button class="btn" size="small" @click.native="addCount" :data-count="item.count"  :data-id="item.id">+</mt-button>
                <mt-button class="debtn" :data-id="item.id" @click="delItem">删除</mt-button>
            </div>
            <div>
            <!-- 按钮删除选中商品 -->
                购物车商品的数量
                <span>{{$store.getters.getCartCount}}</span>
                <mt-button  class="debtnall" @click="delMitem">删除选中商品</mt-button>
            <!-- 合计 -->
            </div>
            <div class="selectAll">
                <!-- 顶部按钮：全选 -->
                <span><span class="all">全选</span><input type="checkbox" @click="selectAll"></span>
                <span class="sum">
                    <span>合计:<span class="price">￥</span></span>
                    <mt-button class="sumbtn">结算</mt-button>
                </span>

            </div>
        </div>
    </div>
</template>
<script>
import titlebarother from "./Titlebarother.vue"
export default {
    data(){
        return{
            list:[]
        }
    },
    components:{
        "titlebarother":titlebarother
    },
    methods:{
         reCount(e){
            var count=e.target.dataset.count;
            var id=e.target.dataset.id;
            console.log(id);
            if(count>1){
                var url="reCount";
                var obj={id:id,count:count};
                this.axios.get(url,{params:obj}).then(result=>{
                    console.log(result);
                })
                this.loadMore();//加载最新内容
            }else{
                this.$messagebox.confirm("是否删除指定商品").then(action=>{
                    var url="delItem";
                    var obj={id:id,count:count};
                    //发送ajax请求
                    this.axios.get(url,{params:obj}).then(result=>{
                        console.log(result);
                        //如果服务器删除成功，会返回1
                        if(result.data.code>0){
                            this.loadMore();//加载最新内容
                        }
                    })
                }).catch(err=>{
                    return;
                })
            }
        },
        addCount(e){
            var count=e.target.dataset.count;
            var id=e.target.dataset.id;
            console.log(id);
            var url="addCount";
                var obj={id:id,count:count};
                this.axios.get(url,{params:obj}).then(result=>{
                    console.log(result);
                })
                this.loadMore();//加载最新内容
        },
        selectAll(e){
            //全选按钮的处理函数
            //1.获取全选按钮状态
            var cb=e.target.checked;
            //console.log(cb);
            //2.创建循环遍历购物车数组
            for(var item of this.list){
            //3.将全选状态赋值给购物车商品选中状态
                //item.cb 商品状态=cb全选按钮状态
                item.cb=cb;
            }
        },
        delMitem(){
            // 1.创建一个变量，保存多个商品的id值
            var str="";
            // 2.创建一循环，遍历数组，获取状态为true的id值
            for (var item of this.list){
                if(item.cb){
                    str+=item.id+","
                }
            }
            //2.1:判断用户是否选中了商品
            if(str.length==0){
                //2.2:如果没有选中商品，显示确认消息
                this.$messagebox("请选择要删除的商品");
                return;//停止执行
            }
            // 3.截取字符串中最后一个逗号，
            // 截取字符串 0：开始下标 str.lengt-1 保留几个字符
            var str=str.substring(0,str.length-1);
            // console.log(str);
            this.$messagebox.confirm("是否删除选中商品").then(res=>{
                var url="delM";
                var ids={ids:str};
                this.axios.get(url,{params:ids}).then(res=>{
                // console.log(res);
                    if(res.data.code>0){
                    this.$toast("删除成功");
                    this.loadMore();
                    }
                })
            })
            .catch(err=>{
            // console.log(err);
            })
            // 4.显示交互式提示框，再次请用户确认操作
            // 5.发送ajax请求，删除多个数据
            // 6.提示用户删除成功
            // 7.重新加载购物车中数据
        },
        delItem(e){
            var id=e.target.dataset.id;
            console.log(id);
            this.$messagebox.confirm("是否删除指定商品").then(action=>{
                var url="delItem";
                var obj={id:id};
                //发送ajax请求
                this.axios.get(url,{params:obj}).then(result=>{
                    console.log(result);
                    //如果服务器删除成功，会返回1
                    if(result.data.code>0){
                        this.$toast("删除成功");//提示信息
                        this.loadMore();//加载最新内容
                    }
                    
                })
            }).catch(err=>{
                return;
            })
        },        
        loadMore(){
            //功能：加载购物车中数据
            //当组件创建成功后调用
            //1.发送请求  cart
            var url="cart";            
            this.axios.get(url).then(res=>{
                console.log(res);
                //2.获取返回结果 
                if(res.data.code==-1){
                    //3.如果用户没有执行登录操作
                    this.$messagebox("消息","请先登录").then(res=>{
                        //提示交互提示/跳转登录组件
                        this.$router.push("/Login");
                        return;
                    })
                }else{
                    //4.获取数据成功
                    var list=res.data.data;
                    console.log(list);
                    //4.1创建循环遍历数组并且为每个元素添加cb属性，表示商品前复选框状态
                    //注意：先添加cb属性再赋值list
                    //加载之前先清空
                    this.$store.commit("clear");
                    for(var item of list){
                        //4.11 添加cb属性表示状态
                        item.cb=false;
                        //4.12 修改共享购物车中数量值
                        this.$store.commit("increment");
                    }
                    //5.保存购物车数据
                    this.list=list;
                }
            })
        },        
    },
    created(){
        this.loadMore();
    },
}
</script>
<style scoped>
/* 1.商品项目元素 */
.list{
    width:100%;
    height:1111px;
    position:fixed;
    float:left;
    z-index:-1;
    background-color:#F5F5F5; 
}
.cart-item{
    width:95%;
    height:60px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin:auto;
    margin-bottom: 10px ;
    border:1px solid #ccc;
    border-radius:5px;/*指定元素圆角*/
    background-color:#fff;
}
/* 单选框 */
.cb{
    margin:5px;
}
/* 2.左侧图片与文字 */
.leftImgText{
    display: flex;
    align-items: center;
}
/* 3.单独修改图片高度和宽度 */
.leftImgText img{
    width:50px;
    height: 50px;
}
/* 4.商品价格 */
.price{
    margin-left:25px;
    color:red;
}
/* 删除按钮 */
.debtn{
    width:60px;
    height:30px;
    font-size:15px;
    margin-right:5px;
    background:#F27151;
    color:#fff;
}
.debtnall{
    width:150px;
    height:30px;
    font-size:15px;
    margin-right:5px;
    background:#F27151;
    color:#fff;
}
/* 全选 */
.selectAll{
    width:100%;
    height:40px;
    line-height: 40px;
    display: flex;
    justify-content:space-between;
    padding:5px;
    background-color:#fff;
    position: fixed;
    bottom:57px;
}
.all{
    margin:0 5px;
}
.sum{
    width:40%;
    display: flex;
    justify-content: space-between;
    position:relative;
}
/* 合计价格 */
span.price{
    margin:0;
}
/* 结算 */
.sumbtn{
    width:60px;
    height:30px;
    line-height: 30px;
    font-size:15px;
    color:#fff;
    background:#F27151;
    position: absolute;
    top:5px;
    right:15px;
    border-radius:16px;
}
</style>