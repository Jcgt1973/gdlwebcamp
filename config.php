<?php

require 'paypal/autoload.php';

define('URL_SITIO', 'http://localhost/paypal');

$apiContext = new \PayPal\Rest\ApiContext(
    new \PayPal\Auth\OAuthTokenCredential(
        'Aasjk_GdrMZ3kQI6u5gRvHKUYtJTNML0OFrmtM9f0PS8X4QCe0ylIjMXIk7C3OCmHa-188kOXR4FYIfh',     // ClientID
        'ELeui2hGOXUYahnYL1UMEwMbXnyyOeIKDtRKNi8y9hSskaNlzhE8y72gOjLCTDFJ_aG5XUitK5FkxT9i'      // Secret
    )
);



