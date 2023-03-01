const db = require('../db/index');

//传数据给前端的函数
exports.getMsg = (req,res)=>{
    let type = req.query.type;
    /**
     * 我要干什么？
     * 前端发送 get 请求 我这里将数据一并返回给前端
     * 
    */
//    console.log(type);
   const sql = "select * from goodsinfo where type = ? ";
   db.query(sql,type,(err,results)=>{
    if(err)
    {
        return res.send({
            status:1,
            message:err.message
        })
    }
    res.send({
        status:0,
        message:"请求成功！",
        data:results
    })
   })
}