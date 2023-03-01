const express = require('express');
const router = express.Router();

const router_handle = require('../router_handle/shopCar');

//1.点击跳转到详情页面
router.get('/getDetail',router_handle.getDetail);

//2.添加物品到购物车
router.post('/putCart',router_handle.putToCart)

//3.将购物车数据发送给前段
router.get('/getCart',router_handle.getCart)

//4.s删除购物车
router.post('/delgoods',router_handle.delGoods)
module.exports = router