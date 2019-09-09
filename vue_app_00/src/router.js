//router.js 引入路由
import Vue from 'vue'
import Router from 'vue-router'
//自定义组件
import HelloContainer from "./components/HelloWorld.vue"

// 登陆注册
import Login from "./components/Private-Kitchen/Login.vue"
import Register from "./components/Private-Kitchen/Register.vue"

// 主页
import Index from "./components/Private-Kitchen/Index.vue"
// 头部导航栏
import Titlebar from "./components/Private-Kitchen/Titlebar.vue"
  // 搜索页面
  import Search from "./components/Private-Kitchen/Search.vue"
// 轮播图
import Carousel from "./components/Private-Kitchen/Carousel.vue"
// 主页按钮
import Button from "./components/Private-Kitchen/Button.vue"
  // 菜谱分类
  import Menu from "./components/Private-Kitchen/Menu.vue"
    import Content from "./components/Private-Kitchen/Content_1.vue"
    import Contentc from "./components/Private-Kitchen/Content_ceshi.vue"
  // 三餐
  import Meals from "./components/Private-Kitchen/Meals.vue"
  // 菜谱商城
  import CartShop from "./components/Private-Kitchen/CartShop.vue"
  // 家常菜
  import HomeDishes from "./components/Private-Kitchen/HomeDishes.vue"
  // 烘焙
  import Bakery from "./components/Private-Kitchen/Bakery.vue"
  // 佳作
  import Crown from "./components/Private-Kitchen/Crown.vue"

// tab选项卡
import Tabcarousel from "./components/Private-Kitchen/Tabcarousel.vue"
  // 推荐
  import Recommend from "./components/Private-Kitchen/Recommend.vue"
  // 关注
  import Attention from "./components/Private-Kitchen/Attention.vue"
  // 美食社区
  import Foodcity from "./components/Private-Kitchen/Foodcity.vue"
  // 厨房技巧
  import Skill from "./components/Private-Kitchen/Skill.vue"
  // 美食圈
  import Community from "./components/Private-Kitchen/Community.vue"
import Bottombar from "./components/Private-Kitchen/Bottombar.vue"

// 除首页外的头部
import Titlebarother from "./components/Private-Kitchen/Titlebarother.vue"

// 购物车
import Cart from "./components/Private-Kitchen/Cart.vue"
// 下拉刷新
import PullRefresh from "./components/Private-Kitchen/PullRefresh.vue"
// 我的
import Me from "./components/Private-Kitchen/Me.vue"
import Coupon from "./components/Private-Kitchen/Coupon.vue"

Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    {path:'/Login',component:Login},
    {path:'/Register',component:Register},

    {path:'/Index',component:Index},
    {path:'/Titlebar',component:Titlebar},
      {path:'/Search',component:Search},
    {path:'/Carousel',component:Carousel},
    {path:'/Button',component:Button},
      {path:'/Menu',component:Menu},
        {path:'/Content',component:Content},
        {path:'/Contentc',component:Contentc},
      {path:'/Meals',component:Meals},
      {path:'/CartShop',component:CartShop},
      {path:'/HomeDishes',component:HomeDishes},
      {path:'/Crown',component:Crown},

    {path:'/Tabcarousel',component:Tabcarousel},
      {path:'/Recommend',component:Recommend},
      {path:'/Attention',component:Attention},
      {path:'/Foodcity',component:Foodcity},
      {path:'/Skill',component:Skill},
      {path:'/Bakery',component:Bakery},
      {path:'/Community',component:Community},
    {path:'/Bottombar',component:Bottombar},
    
    
    {path:'/Titlebarother',component:Titlebarother},

    {path:'/Cart',component:Cart},
    {path:'/PullRefresh',component:PullRefresh},
    
    {path:'/Me',component:Me},
    {path:'/Coupon',component:Coupon},

  ]
})