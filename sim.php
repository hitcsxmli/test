<?PHP
//simsimi机器人最新接口api由 http://www.xiaodoubi.com 提供，请勿用于非法商业用途
//API端口体验链接：http://www.xiaodoubi.com/simsimiapi.php?msg=你好
// 设置报文头, 构建请求报文 
	header("Content-type: text/html; charset=utf-8");
	$msg ="好寂寞"; 
	$url ="http://www.xiaodoubi.com/simsimiapi.php?msg=".$msg;

	//此接口为simsimi纯接口api，未作任何关键词过滤，请使用时自行过滤

	/** 方法一、用file_get_contents 以get方式获取内容 */
	$res = file_get_contents($url); 
	echo $res."<br>"; 

	/** 方法二、使用curl库，需要查看php.ini是否已经打开了curl扩展 */
	$ch = curl_init(); 
	$timeout = 5; curl_setopt ($ch, CURLOPT_URL, $url); curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1); 
	curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, $timeout); 
	$file_contents = curl_exec($ch); 
	curl_close($ch);
	echo $file_contents;