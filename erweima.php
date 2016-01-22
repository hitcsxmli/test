<?php
//1.封装生成二维码图片的函数（方法）
 /** *利用google api生成二维码图片
 * $content：二维码内容参数
 * $size：生成二维码的尺寸，宽度和高度的值
 * $lev：可选参数，纠错等级
 * $margin：生成的二维码离边框的距离
 */
function create_erweima($content, $size = '100', $lev = 'L', $margin= '0') {    
	$content = urlencode($content);
	$image2='<img src="http://www.xcsoft.cn/public/qrcode?text='.$content.'&size='.$size.'&level='.$lev.'&padding='.$margin.'&logo=">';
	return $image2;
}
$url="http://baidu.com";
echo create_erweima($url);
