if (var('request.header.php-auth-user') != 'user' and var('request.header.php-auth-pw') != 'pass') {
    respond('', 401, [
        'WWW-Authenticate: Basic realm="User Visible Realm"'
    ]);
}

respond('Login OK!');
