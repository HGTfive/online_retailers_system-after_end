const express = require("express");
const router = express.Router();
const router_handler = require('../router_handle/goodsOrder')
//加入已支付订单接口 goodsorder

router.post('/payed',router_handler.postPayed)
//展示订单
router.get('/getpayed',router_handler.getPayed)
//删除已支付订单
router.post('/delpayed',router_handler.delPayed)
//加入未支付订单
router.post('/postunpayed',router_handler.postUnPayed)
//拿到未支付
router.get('/getunpayed',router_handler.getUnPayed)
//删除未支付
router.post('/delunpayed',router_handler.delUnPay)

module.exports = router;