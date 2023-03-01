const express = require('express')

// 创建路由对象
const router = express.Router()

//导入router_handle
const router_handle = require('../router_handle/user')

// 1. 导入 @escook/express-joi
const expressJoi = require('@escook/express-joi')

const { reg_login_schema } = require('../schema/user')

// 注册新用户
router.post('/register',expressJoi(reg_login_schema),router_handle.register)

// 用户登录
router.post('/login',expressJoi(reg_login_schema),router_handle.login)

//将 路由对象给导入出去
module.exports = router
