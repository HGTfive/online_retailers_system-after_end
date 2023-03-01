const jwt = require('jsonwebtoken');
const config = require('../config');
const db = require('../db');

//加入到已支付订单
exports.postPayed = (req,res)=>{
    const id = req.query.id;
    console.log('-----------')
    console.log(id);
    console.log('-------------')
    let username = "";
    const token = req.headers.authorization.slice(7);
    jwt.verify(token,config.jwtSecretKey,(err,decode)=>{
        if(err) console.log(err)
        else {
            username = decode.username
        }
    }) 

    const sql = "select * from shopcart where id=? "
    db.query(sql,id,(err,results)=>{
        if(err)
        {
            return res.send({
                status:1,
                message:"查询失败："+err.message,
            })
        }
        if(results.length>0)
        {
            const sql2 = "insert into goodsorder set ?"
            const info = results[0];
            console.log('+++++++++++++++')
            console.log(info);
            const oo = {
                goodsname:info.goodsname,
                goodsprice:info.goodsprice*info.goodsnumber,
                goodsnumber:info.goodsnumber,
                username:username,
                type:"payed"
            }
            db.query(sql2,oo,(errp,resp)=>{
                if(errp)
                {
                    return res.send({
                        status:1,
                        message:errp.message
                    })
                }
                res.send({
                    status:0,
                    message:"插入订单成功!"
                })
            })
        }
    })
}
//拿到已支付订单
exports.getPayed = (req,res)=>{
    let user = "";
    let type = "unpayed"
    const tokenstr = req.headers.authorization.slice(7);
    jwt.verify(tokenstr,config.jwtSecretKey,(err,decode)=>{
        if(err){
            console.log(err)
        }
        else
        {
            user = decode.username;
        }
    })
    const sql = "select * from goodsorder where username = ?  "
    db.query(sql,user,(err,results)=>{
        if(err)
        {
            return res.send({
                status:1,
                message:"查询失败"+err.message
            })
        }
        return res.send({
            status:0,
            message:"查询已支付订单成功",
            data:results
        })
    })
}
//删除订单
exports.delPayed = (req,res)=>{
    const id = req.body.id;
    console.log(id)
    const sql = "delete from goodsorder where id = ? "
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
            message:"删除成功！"
        })
    })
}
//未支付订单
exports.postUnPayed = (req,res)=>{
    const id = req.body.id;
    console.log(id)
    const token = req.headers.authorization.slice(7);
    var username = ""
    jwt.verify(token,config.jwtSecretKey,(err,decode)=>{
        if(err)console.log(err)
        else {
            username = decode.username
        }
    })
    const sql = "select * from goodsinfo where goodsid = ?"
    db.query(sql,id,(err,results)=>{
        if(err) 
        {
            console.log(err.message)
            return res.send({
                status:1,
                message:err.message
            })
        }
        
        // if(results>0)
        // {
            const sql2 = "insert into goodsorder set ? ";
            const oo = {
                goodsname:results[0].goodsname,
                goodsprice:results[0].goodsprice,
                // goodsnumber:results[0].goodsnumber,
                username:username,
                type:"unpayed"
            }
            db.query(sql2,oo,(errp,resp)=>{
                if(errp) res.send({
                    status:1,
                    message:errp.message
                })
                return res.send({
                    status:0,
                    message:"插入未支付订单成功！"
                })
            })
        // }
    })
}
//拿到未支付
exports.getUnPayed = (req,res)=>{
    const token = req.headers.authorization.slice(7);
    var username = ""
    jwt.verify(token,config.jwtSecretKey,(err,decode)=>{
        if(err)
        console.log(err)
        else {
            username = decode.username
        }
    })
    const sql = "select * from goodsorder where username = ? and type = ?"
    db.query(sql,{username:username,type:"unpayed"},(err,results)=>{
        if(err) return res.send({status:1,message:"查询失败"+err.message})
        return res.send({
            status:0,
            message:results
        })
    })
}
//删除未支付
exports.delUnPay = (req,res)=>{
    const id = req.body.id;
    const sql = "delete from goodsorder where id = ?"
    db.query(sql,id,(err,results)=>{
        if(err) return res.send({status:1,message:"删除失败" + err.message})

        return res.send({status:0,message:"删除成功！"})
    })
}