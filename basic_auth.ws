username = 'john'
password = '1234'

if (var('request.header.php-auth-user', '') != username and var('request.header.php-auth-pw', '') != password) {
    respond('', 401, ['WWW-Authenticate: Basic realm="Authentication required"']);
}

respond('Login OK!');
