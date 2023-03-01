const express = require('express')
//创建路由对象
const router = express.Router();

const textinfo_handler = require('../router_handle/textinfo');
//获取文章的信息
router.get('/getinfo',textinfo_handler.gettextinfo);
//添加文章信息到我的收藏
router.post('/postinfo',textinfo_handler.posttextinfo);

module.exports = router