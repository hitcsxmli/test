<?php
if (isset($_GET['code'])){
    $appid = "wx547fd502684dd565";  
    $secret = "df9554dea7444ac276e6d20ee285d2d0";  
    $code = $_GET["code"];
    //使用code获取access_token
    $oauth2Url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=$appid&secret=$secret&code=$code&grant_type=authorization_code";
    $oauth2 = getJson($oauth2Url);
	print_r($oauth2);
    /*$token = $oauth2['access_token'];
    $openid = $oauth2['openid'];
	//使用token 和openid获取用户信息
    $userUrl="https://api.weixin.qq.com/sns/userinfo?access_token=$token&openid=$openid&lang=zh_CN";
    $userInfo = getJson($userUrl);
    echo '关注的用户名：'.$userInfo['nickname'];*/

}else{
    echo "NO CODE";
}
function getJson($url){
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE); 
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE); 
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($ch);
    curl_close($ch);
    return json_decode($output, true);
}

?>