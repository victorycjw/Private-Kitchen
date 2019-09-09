<template>
    <div>
        <van-nav-bar title="标题" left-text="返回" left-arrow @click-left="onClickLeft" @click-right="onClickRight">
            <van-icon name="search" slot="right" />
        </van-nav-bar>
    </div>
</template>
<script>
export default {
  methods: {
    onClickLeft() {
      Toast('返回');
    },
    onClickRight() {
      Toast('按钮');
    }
  }
}
</script>