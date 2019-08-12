//router.js 引入路由
import Vue from 'vue'
import Router from 'vue-router'
//自定义组件
import HelloContainer from "./components/HelloWorld.vue"

import Home from "./components/Private-Kitchen/Login.vue"
import Login from "./components/Private-Kitchen/Login.vue"
import Register from "./components/Private-Kitchen/Register.vue"


Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    {path:'/Home',component:Home},
    {path:'/Login',component:Login},
    {path:'/Register',component:Register},
  ]
})