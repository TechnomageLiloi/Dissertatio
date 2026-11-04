<?php

ini_set('display_errors', 'On');
session_start();
error_reporting(E_ALL & ~E_WARNING & ~E_NOTICE);

define('ROOT_URL', '');
define('ROOT_PATH', __DIR__);

include_once __DIR__ . '/vendor/autoload.php';

$private = json_decode(file_get_contents(__DIR__ . '/Engine/Config/Private.json'), true);

$config = array_merge([
    'root' => __DIR__ . $private['realm']
], $private);


$app = new \Liloi\Dissertatio\Application($config);

echo $app->compile();
