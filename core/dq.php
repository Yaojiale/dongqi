<?php
session_start();
ext\pdo::$host = '127.0.0.1';
ext\pdo::$db_name = 'dq';
ext\pdo::$user = 'root';
/**
 * 默认连接mysql
 * 不建议打开;
 */
//\core\ctr\router::$data['link'] = \ext\pdo::connect();