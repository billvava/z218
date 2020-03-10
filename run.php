<?php
$locationURL = "http://fy.tichee.com/index.php?s=/Handle/jiesuan";
$ch = curl_init($locationURL) ;
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); // 获取数据返回
curl_setopt($ch, CURLOPT_BINARYTRANSFER, true); // 在启用 CURLOPT_RETURNTRANSFER 时候将获取数据返回
$result = curl_exec($ch);
?>