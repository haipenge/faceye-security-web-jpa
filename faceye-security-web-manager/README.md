faceye-security-web
==============
          
    1.grant_type = authorization_code 模式
    1).生成授权码：
     http://localhost:8080/oauth/authorize?client_id=web_client&response_type=code&redirect_uri=http://www.baidu.com

    2).使用授权码换取access token
     http://localhost:8080/oauth/token?client_id=web_client&client_secret=secret&grant_type=authorization_code&code=3sJaPw&redirect_uri=http://www.baidu.com

    curl -X POST -H "Cache-Control: no-cache" -H "Content-Type: application/x-www-form-urlencoded" -d 'grant_type=password&redirect_uri=http://www.baidu.com' "http://localhost:8080/oauth/token?client_id=client&client_secret=secret&grant_type=authorization_code&code=3sJaPw"

    注:code 一次有限，需每次更换code

    2.使用密码模式获取access_token,grand_type=password
     http://localhost:8080/oauth/token?client_id=mobile_client&client_secret=secret&grant_type=password&scope=read&username=demo&password=demo
     
     curl -X POST -H "Cache-Control:no-cache" -H "Content-Type: application/x-www-form-urlencoded" "http://localhost:8080/oauth/token?client_id=mobile_client&client_secret=secret&grant_type=password&scope=read&username=demo&password=demo"
      
    3.grant_type = client_credentials
    
    http://localhost:8080/oauth/token?client_id=mobile_client&client_secret=secret&grant_type=client_credentials&scope=read
    curl -X POST -H "Cache-Control: no-cache" -H "Content-Type: application/x-www-form-urlencoded"  "http://localhost:8080/oauth/token?client_id=mobile_client&client_secret=secret&grant_type=client_credentials&scope=read"
    
    4.grant_type = refresh_token
    http://localhost:8080/oauth/token?client_id=mobile_client&client_secret=secret&grant_type=refresh_token&refresh_token=a3c2d32d9f20743ac0a4cda3c26fbbfb
    
    curl -X POST -H "Cache-Control:no-cache" -H "Content-Type: application/x-www-form-urlencoded" "http://localhost:8080/oauth/token?client_id=mobile_client&client_secret=secret&grant_type=refresh_token&refresh_token=e3d68cca-34a0-4358-89ba-035654327852"
    
    5.rest_token
    1).http://localhost:8080/oauth/rest_token
    参数上
    
    
    