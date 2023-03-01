# 链接数据库 SQL1 

### 用户信息  
    链接表 userinfo，

    登录接口 "/api/user/login"
        接受参数："json"
            {
                "username":"admin",
                "password":"admin"
            }
        返回格式："json"
            {
                "status":200,
                "message":"login OK"，
                "data":{
                    "token":
                }
            }
    注册接口："/api/user/register"
        接收参数："json"
            {
                "username":"admin123",
                "password":"admin123"
            }