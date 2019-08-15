//router.js 引入路由
import Vue from 'vue'
import Router from 'vue-router'
//自定义组件
import HelloContainer from "./components/HelloWorld.vue"

import Index from "./components/Private-Kitchen/Index.vue"
import Login from "./components/Private-Kitchen/Login.vue"
import Register from "./components/Private-Kitchen/Register.vue"
import Carousel from "./components/Private-Kitchen/Carousel.vue"
import Titlelar from "./components/Private-Kitchen/Titlelar.vue"
import Tabcarousel from "./components/Private-Kitchen/Tabcarousel.vue"
import Search from "./components/Private-Kitchen/Menu/Search.vue"
import Sidebartab from "./components/Private-Kitchen/Menu/Sidebartab.vue"
import Menu from "./components/Private-Kitchen/Menu/Menu.vue"


Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    {path:'/Index',component:Index},
    {path:'/Login',component:Login},
    {path:'/Register',component:Register},
    {path:'/Carousel',component:Carousel},
    {path:'/Titlelar',component:Titlelar},
    {path:'/Tabcarousel',component:Tabcarousel},
    {path:'/Search',component:Search},
    {path:'/Sidebartab',component:Sidebartab},
    {path:'/Menu',component:Menu}
  ]
})