const db = require('../db/index')
const jwt = require('jsonwebtoken')
const config = require('../config')
//导入一个 密码加密的一个包 bcryptjs 
const bcrypt = require('bcryptjs')

//注册的函数
exports.register = (req, res) => {
    const userinfo = req.body
    console.log(userinfo)
    const sql = 'select * from userinfo where username = ? '
    db.query(sql, userinfo.username, (err,results)=>{
        if (err) {
            return res.send({ status: 1, msg: err.message })
        }
        console.log(err)
        if (results.length > 0) {
            return res.send({ status: 1, msg: '用户名被注册' })
        }
        //密码加密 
        userinfo.password = bcrypt.hashSync(userinfo.password, 10)
        
        const sql1 = 'insert into userinfo set ?'
        const userinfo1 = userinfo
        console.log(userinfo1)
        db.query(sql1,{username:userinfo1.username,password:userinfo1.password},(err,results)=>{
            if(err) {   
                return res.cc('插入失败'+ err)
            }
            res.send({
                status:0,
                msg:'注册成功！'
            })
        })
    })


}

// 登录的函数



exports.login = (req, res) => {

    console.log(111111232323223)
    const userinfo = req.body
    console.log(userinfo)

    //判断用户名是否存在
    const sql = 'select * from userinfo where username = ?'
    db.getConnection((err1,connection)=>{
        if(err1) console.log(err1)
        db.query(sql, userinfo.username, (err, results) => {
            console.log(userinfo)
            if (err) return res.send({
                msg: err.message,
                status: 1
            })
            console.log(results)
            if (results.length !== 1) {
                return res.send({
                    msg: '用户名不存在',
                    status: 1
                })
            }
            //判断密码是否正确
            console.log(results[0])
            // console.log("22222"+userinfo.password)
            const compareResult = bcrypt.compareSync(userinfo.password, results[0].password)
            if (!compareResult) return res.cc('登录失败 密码不正确')
            //在服务器端生成 Token 字符串
            const user = { ...results[0], password: '' }
            console.log(user)
            const tokenStr = jwt.sign(user, config.jwtSecretKey, { expiresIn: '10h' })
            const untoken = jwt.verify(tokenStr,config.jwtSecretKey);
            console.log(untoken);
            res.send({
                status: 0,
                message: '登陆成功',
                token: 'Bearer ' + tokenStr
            })
        })
        connection.release();
    })
}

