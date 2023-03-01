const multer = require('multer')

const upload = multer({
    //设置文件的位置
    destination:function(req,file,cb)
    {
        console(req,file,cb);

    }
}).single("photo")

exports.user_photo = upload