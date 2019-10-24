<?php
// Benchmark Base File on PHP
$f_start_ms = microtime(true);
$f_diff_ms  = (float)0;
//$f_diff_ms2  = (float)0;
ini_set('error_log', 'php://stderr');

try {
    // @todo
    throw new Exception('@ToDo: Write test code.');
}
catch(Exception $e) {
    error_log("**Exception**: {$e->getMessage()}");
}
finally {
    $f_diff_ms = microtime(true) - $f_start_ms;
    //$f_diff_ms2 = microtime(true) - $_SERVER{'REQUEST_TIME_FLOAT'};
    error_log("{$f_diff_ms} micro-sec.");
    //error_log("{$f_diff_ms2} micro-sec.");
}
