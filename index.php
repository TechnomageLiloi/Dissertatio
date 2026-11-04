<?php

ini_set('display_errors', 'On');
session_start();
error_reporting(E_ALL & ~E_WARNING & ~E_NOTICE);

define('ROOT_URL', '');
define('ROOT_PATH', __DIR__);

include_once __DIR__ . '/vendor/autoload.php';