<?php

require 'paypal/autoload.php';

define('URL_SITIO', 'http://localhost/gdlwebcamp/');

$apiContext = new \PayPal\Rest\ApiContext(
    new \PayPal\Auth\OAuthTokenCredential(
        'AerwmiPstaL261vrRj7msEk-4iUOfsWj8CvhhV1xXxXWdy4LLqV9ScDtEhxo06U5G512c93OY5gr1F_6',     // ClientID
        'EF6fhOkey4xbRl0hH-AcoQbNbGdBesG-k1TUDQxIdI4Ve64G-SJ8VY40CaiROKTGS7NLcbt_SVe9RwaO'      // Secret
    )
);



