function authenticate() {
    respond('', 401, [
        'WWW-Authenticate: Basic realm="User Visible Realm"'
    ]);
}

user = var('request.header.php-auth-user')
pass = var('request.header.php-auth-pw')

if (!user or !pass) {
    authenticate()
}
if (user != 'username' and pass != '1234') {
    authenticate()
}

respond('Login OK!');
