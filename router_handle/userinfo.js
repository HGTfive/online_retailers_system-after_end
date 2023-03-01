const db = require('../db/index');
const jwt = require('jsonwebtoken');
const config = require('../config');






//post 数据
exports.postmsg = (req, res) => {
    const info = req.fields;
    console.log(req)
    console.log('fsdfdf',info)
    if(!req.headers.authorization){
        return res.send({status:1,message:"登录过时，请重新登录！"})
    }
    else{
        // console.log(token)
        const token = req.headers.authorization.slice(7);
        var username = ""
        jwt.verify(token,config.jwtSecretKey,(err,decode)=>{
            if(err) 
            {
                console.log(err) 
                return res.send({
                    status:-1,
                    message:"登录失效！"
                })
            }
            else {
                username = decode.username
            }
        })
        const sql1 = "select * from userinfomsg where usernaem = ?"
        db.query(sql1,username,(err,results)=>{
            if(err) return res.send({status:1,message:err.message})
            if(results.length == 0)
            {
                const sql = "insert into userinfomsg set ?"
                const oo = {
                    user:info.user,
                    gender:info.gender,
                    age:info.age,
                    telenumber:info.telenumber,
                    usernaem:username
                }
                db.query(sql,oo,(err,resultsp)=>{
                    if(err) return res.send({status:1,message:err.message})
                    return res.send({
                        status:0,
                        message:"插入成功！",
                        data:resultsp
                    })
                })
            }
            else {
                const sql3 = "update userinfomsg set ? where usernaem = ?" 
                const oo = {
                    user:info.user,
                    gender:info.gender,
                    age:info.age,
                    telenumber:info.telenumber,
                }
                db.query(sql3,[oo,username],(errp,resp)=>{
                    if(errp) return res.send({status:1,message:errp.message})
                    return res.send({
                        status:0,
                        message:"更新成功！"
                    })
                })
            }
        })
    }
      
}
//get 请求数据
exports.getmsg = (req, res) => {
    if(!req.headers.authorization)
    {
        return res.send({status:-1,message:"登录失效！"})
    }
    else{
        const token = req.headers.authorization.slice(7);
        var username = "";
        jwt.verify(token,config.jwtSecretKey,(err,decode)=>{
            if(err) 
            {
                console.log('123123213123')
                console.log(err);
                return res.send({
                    status:-1,
                    message:"登录过时！token失效"
                })
            }
            else {
                username = decode.username
            }
        })
        const sql = "select * from userinfomsg where usernaem = ? "
        db.query(sql,username,(err,results)=>{
            if(err) {
            return res.send({
                    status:1,
                    message:"查询失败" + err.message
                })
            }
            if(results.length>0)
            {
                res.send({
                    status:0,
                    message:"查询成功！",
                    data:results[0]
                })
            }
        })
            }
   
}

// const upload = multer({
//     storage:multer.diskStorage({
//         //文件的存储位置
//         destination:function(req,file,cb){
//             console.log(req,file,cb)
//         },
//         //文件的名字设置
//         filename(req,file,cb){
//             console.log('000000000000000000000');
//             console.log(req,file,cb)
//         }
//     })
// })

// const multerFile = upload.single();
// //头像上传
// exports.postImg = (req,res,next)=>{
//     /**
//      * 我要干嘛？
//      * 
//      */
//     console.log('sqfffffffff')
//     console.log(req.file)
//     console.log('sqfffffffff')
//     multerFile(req,res,err=>{

//     })



//     // console.log(multer)
//     return res.send({
//         status:0,
//         message:"收到了"
//     })
// }


