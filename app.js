const express = require('express')
const bodyParser = require('body-parser');
const formidable = require('express-formidable')
const expressJWT = require('express-jwt')
const multer = require('multer');

const storage = multer.diskStorage({
    // cb是callback回调函数的缩写
    destination:(req,file,cb)=>{
        cb(null,'./uploadImg/')
    },
    filename:(req,file,cb)=>{
        // 文件名取 时间戳和原文件的后缀名进行组合
        cb(null,Date.now()+path.extname(file.originalname))
    }
})
const upload = multer({
    storage
})

const app = express()
const router = express.Router()

//配置 cors 的中间件 解决跨域问题
const cors = require('cors')

const config = require('./config')


//注册为全局中间件
app.use(cors())
//注册 读取前端传来的 json 格式的数据z
app.use(bodyParser.json({limit:"1mb"}));

app.use(bodyParser.urlencoded({
    extended:true
}))
// 解析 x-www-form-urlencoded 格式的表单数据
app.use(express.urlencoded({ extended: false }))

app.use(formidable());

app.use((req, res, next) => {
    res.cc = function (err, status = 1) {
        res.send({
            status,
            msg: err instanceof Error ? err.message : err//三元表达式
        })
    }
    next()
})

app.use(expressJWT({secret:config.jwtSecretKey}).unless({
    path:[/^\/api/] 
}))

//  错误级别中间件
app.use(function (err, req, res, next) {
    // 4.1 Joi 参数校验失败
    if (err instanceof Joi.ValidationError) {
        return res.send({
            status: 1,
            message: err.message
        })
    }
    if(err) 
    {
        return res.send({message:err.message})
    }
    res.send({
        status: 1,
        message: err.message,
        msg:1111
    })
})

//导入 并使用 user 这个路由模块 
const useRouter = require('./router/user')
app.use('/api/user', useRouter)

//导入并使用 userinfo 这个路由模块
const userinfoRouter = require('./router/userinfo')
app.use('/api/userinfo', userinfoRouter)

//导入并使用 textinfo 这个路由模块
const textinfoRouter = require('./router/textinfo');
app.use('/api/textinfo',textinfoRouter)

const goodsinfoRouter = require('./router/goodinfo');
app.use('/api/usergoods',goodsinfoRouter)

const shopcarRouter = require('./router/shopCar');
app.use('/api/shop',shopcarRouter)

const goodsOrderRouter = require('./router/goodsOrder')
app.use('/api/order',goodsOrderRouter)

const Joi = require('joi')



//调用 app.listen() 的方法，在指定的端口并启动web服务器
app.listen(8088, () => {
    console.log('api is running at http://127.0.0.1:8088')
    console.log('================')
    // console.log(router.post())
})
