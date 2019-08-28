<template>
        <div class="product-app">
            <!-- Product.vue -->
            <!-- 一个商品 循环 -->
            <div class="goods-item" v-for="(item,i) of list" :key="i">
                <img :src="'http://127.0.0.1:3000/'+item.img_url">
                <div class="detail">{{item.lname}}</div>
                <div class="info">
                    ￥<span class="price">{{item.price}}</span>
                </div>
                <mt-button class="addCart"  @click="addCart" :data-lid="item.lid" :data-lname="item.lname" :data-price="item.price">加入购物车</mt-button>                
            </div>
            <mt-button class="viewCart" @click="jumpCart">查看购物车</mt-button>
            <mt-button  class="viewCart" @click.native="loadMore">加载更多</mt-button>
        </div>
    </template>
    <script>
    export default {
        data(){
            return{
                list:[],  //商品列表数组
                pno:0     //页码（第几页）
            }
        },
        created(){
            this.loadMore();
            // console.log("1.created组件创建成功");
        },
        methods:{
            jumpCart(){
                //查看购物车，跳转到购物车的组件
                this.$router.push("/Cart");
            },
            loadMore(){
                //获取商品分页的数据
                //1.发送请求
                var url="product";
                this.pno++; //当前页码+1
                var obj={pno:this.pno};
                this.axios.get(url,{params:obj}).then(res=>{                           
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
            addCart(e){
                var lid=e.target.dataset.lid;
                var lname=e.target.dataset.lname;
                var price=e.target.dataset.price;
                var img_url=e.target.dataset.img_url;
                var url="addCart";
                var obj={lid:lid,lname:lname,price:price,img_url:img_url};
                this.axios.get(url,{params:obj}).then
                    (res=>{
                    if(res.data.code==-1){
                        this.$messagebox.confirm("请先登录再购买商品")
                            .then(action=>{
                                this.$router.push("/Login");
                            }).catch(err=>{
                                this.$messagebox.alert(err);
                            })
                    }else{
                        this.$toast("添加成功 ");
                    }
                })
            }
        }
    }
    </script>
    <style scoped>
        .product-app{
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
        .addCart{
            width:90%;
            height:30px;
            background-color:#F27151;
            color:#fff;
            font-size:15px;
            margin:auto;
            margin-bottom:10px;
        }
        .viewCart{
            width:100%;
            height:30px;
            background-color:#EC932A;
            color:#fff;
            font-size:15px;
            margin: 5px auto;

        }
    </style>