<template>
    <!-- 优惠卷：mycoupon -->
    <div class="mycoupon">
        <!-- 调用vant组件：van-coupon-cell -->
        <!-- chosen-coupon：当前选中优惠券的索引 -->
        <!-- coupons：可用优惠券列表 -->
        <van-coupon-cell
            :icon="require('../../assets/redpacket.png')"
            title="我的专属红包"
            :coupons="coupons"
            :chosen-coupon="chosenCoupon"
            @click="showList = true"
        />
        <!-- v-model：当前输入的兑换码 -->
        <van-popup v-model="showList" position="bottom">
            <!-- disabled-coupons：不可用优惠券列表 -->
            <van-coupon-list
                :coupons="coupons"
                :chosen-coupon="chosenCoupon"
                :disabled-coupons="disabledCoupons"
                @change="onChange"
                @exchange="onExchange"
            />
        </van-popup>
    </div>
</template>

<script>
const coupon = {
  available: 1,
  condition: '无使用门槛\n最多优惠12元',
  reason: '',
  value: 150,
  name: '优惠券名称',
  startAt: 1489104000,
  endAt: 1514592000,
  valueDesc: '1.5',
  unitDesc: '元'
};
export default {
    data() {
        return {
            showList:false,
            chosenCoupon: -1,
            coupons: [coupon],
            disabledCoupons: [coupon]
        }
    },
    methods: {
        onChange(index) {
            this.showList = false;
            this.chosenCoupon = index;
        },
        onExchange(code) {
            this.coupons.push(coupon);
        }
    }
}
</script>
<style>

</style>