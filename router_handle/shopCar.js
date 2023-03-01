const db = require('../db/index');
const jwt = require('jsonwebtoken')
const config = require('../config');

//跳转到详情页
exports.getDetail = (req,res)=>{
    /**
     * 我要干嘛？
     * 拿到前端给我的商品 id 以及 用户的信息
     * 根据用户的信息 
     * 
     * 分析：用户登录进来，将用户名和密码给我，我返回前端一个 token 
     */
    const id = req.query.id;
    const sql = "select * from goodsinfo where goodsid = ?"
    db.query(sql,id,(err,result)=>{
        if(err)
        {
            return res.send({
                status:1,
                message:err.message,

            })
        }
        if(result.length >0)
        {
            res.send({
                status:0,
                message:"查询成功！",
                data:result[0]
            })
        }
    })

}
//添加到购物车
exports.putToCart = (req,res)=>{
    const info = req.query;
    let username = "";
    /**
     * 我要干嘛？
     * 从前端拿到商品id和数量，在 goodsinfo 里面查询到这个商品的信息
     * 解析token字符串 在token字符串中拿到用户名 
     * 拿到这个信息数据之后，将这些数据和购买数量一起插入到 shopcart 表里面
     */
    const token = req.headers.authorization.slice(7);
    jwt.verify(token,config.jwtSecretKey,(err,decode)=>{
        if(err) console.log(err);
        else {
            username = decode.username;
        }
    })
    const sql1 = "select * from goodsinfo where goodsid = ?"
    db.query(sql1,info.id,(err,results)=>{
        if(err)
        {
            return res.send({
                status:1,
                message:err.message
            })
        }
        if(results.length>0)
        {
            const sql2 = "insert into shopcart set ? "
            const bb = {
                goodsname:results[0].goodsname,
                goodsprice:results[0].goodsprice,
                goodsnumber:info.number,
                username:username
            }
            db.query(sql2,bb,(errp,resultsp)=>{
                if(errp)
                {
                    return res.send({
                        status:1,
                        message:errp.message
                    })
                }
                res.send({
                    status:0,
                    message:"插入数据到购物车成功！"
                })
            })
        }
    })
}
//从购物车拿东西
exports.getCart = (req,res)=>{
    let tokenStr = req.headers.authorization.slice(7);
    let user = "";
    console.log(tokenStr);
    jwt.verify(tokenStr,config.jwtSecretKey,(err,decode)=>{
        if(err) console.log(err)
        else 
        {
            console.log('------');
            console.log(decode);
            user = decode.username
        }
    })
    const sql = "select * from shopcart where username = ?";
    
    db.query(sql,user,(err,results)=>{
        if(err)
        {
            res.send({
                status:1,
                message:err.message
            })
        }
        if(results.length>0)
        {
            res.send({
                status:0,
                message:"查询数据成功！",
                data:results
            })
        }
        if(results.length == 0)
        {
            res.send({
                status:-1,
                message:"您还没有添加过商品"
            })
        }
    })
}
//删除购物车的商品
exports.delGoods = (req,res)=>{
    const id = req.body.id;
    const sql = " delete from shopcart where id = ?"
    db.query(sql,id,(err,results)=>{
        if(err)
        {
            return res.send({
                status:1,
                message:err.message
            })
        }
        res.send({
            status:0,
            message:"删除成功"
        })
    })
}
