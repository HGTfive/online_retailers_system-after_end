const express = require('express')
const multer = require('multer')
// const user_photo = require('../schema/userinfo')

// const router = express.Router()

// const storage = multer.diskStorage({
//     destination:function(req,file,cb)
//     {
//         cb(null,'/public')
//     },
//     filename:function(req,file,cb)
//     {
//         cb(null,file.filename+" " + Date.now())
//     }
// })

const upload = multer({storage:storage})

const userinfo_handle = require('../router_handle/userinfo')
//获取用户信息
router.post('/postmsg',upload.single("photo"),userinfo_handle.postmsg)

router.get('/getmsg',userinfo_handle.getmsg)




//图片
// router.post('/postimg',upload.single('photo'),(req,res,next)=>{
//     console.log("img ok")
// } )




// function uploadFile(req,res,next){
//     let upload = multer({dest:"public/"}).single("imageUrl");
//     upload(req,res,err=>{
//         console.log(req.file)
//     })
// }

module.exports = router
