<?php
	$appid = "wx547fd502684dd565";  
	$secret = "df9554dea7444ac276e6d20ee285d2d0"; 
	if (isset($_GET['code'])){
		$code=$_GET['code'];
		$oauth2Url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=$appid&secret=$secret&code=$code&grant_type=authorization_code";
		$oauth2 = getJson($oauth2Url);
		$openid = $oauth2['openid'];
		
		$oauth2Url2 = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appid&secret=$secret";
		$oauth22 = getJson($oauth2Url2);
		$access_token = $oauth22['access_token'];
		
		$UserInfoUrl = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=$access_token&openid=$openid&lang=zh_CN";
		$userInfo = getJson($UserInfoUrl);
		var_dump($userInfo);
		/*$user_model=M('user');
		$data['UserOpenid']=$userInfo['openid'];
		
		$data['UserNickName']=$userInfo['nickname'];
		$data['UserCity']=$userInfo['city'];
		$data['UserSex']=$userInfo['sex'];
		$data['UserProvince']=$userInfo['province'];
		$data['UserCountry']=$userInfo['country'];
		$data['UserHeadImgUrl']=$userInfo['headimgurl'];
		$user_exist=$user_model->where("UserOpenid = '".$data['UserOpenid']."'")->find();
		
		if($user_exist['UserOpenid']){//更新用户信息
			$user_model->where('openid = '.$data['UserOpenid'])->save($data);
		}
		else{//增加用户
			$user_model->add($data);
		}*/
	}
	else{
		echo "No Code";
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
