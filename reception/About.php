<?php

namespace reception;

use core\ctr\router;
use ext\errno;
use ext\pdo;

class About
{
    /**
     * 设置允许访问的接口;
     * @var array
     */
    public static $tz = [
        'show' => []
    ];
    private static $link;
    /**
     * 初始化方法
     */
    public static function init()
    {
        //引入错误提示;
        errno::load('reception','error');
        //任何地方都可以连接
        router::$data['link'] = pdo::connect();
        self::$link= pdo::connect();
    }

    /**
     * 展示关于我们
     * @param $link     [直接同名从router拿参数 , 仅限于访问的方法]
     * @return array
     */
    public static function show($link)
    {
        $showSQL = 'SELECT image,content,address FROM dq_about LIMIT 1';
        $state = $link->prepare($showSQL);
        $state->execute();
        $showRes = $state->fetch(\PDO::FETCH_ASSOC);
        return $showRes ? $showRes : errno::get(10002);
    }
}
