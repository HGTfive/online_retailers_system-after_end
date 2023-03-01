const db = require("../db");
//前端拿到数据的接口
exports.gettextinfo = (req,res)=>{
    //我要干嘛？前端发送请求 我要将数据库中的数据发回给前端
    const sql = 'select * from textinfo'
    // const textinfo = req.params;
    db.query(sql,(err,results)=>{
        if(err) {
            console.log(err);
        }
        else {
            res.send({
                status:0,
                data:results[0],
                msg:"ok!"
            })
        }
    })

}
// 前端加入收藏页面的接口
exports.posttextinfo = (req,res)=>{
    const textinfo = req.body;
    const sql = "select * from textinfo where id = ?"
    db.query(sql,textinfo.id,(err,results)=>{
        if(err){
            console.log(err);
        }
        if(results.length>0)
        {
            res.send({
                status:200,
                msg:'ok',
                data:results[0]
            })
        }
    })
}