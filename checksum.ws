// Simple validation that a public string is genuine
// Example URL: https://webhook.site/token?date=2021-01-01&check=82ba425d0244e0d44ee9db16b52ba376...

date = var('request.query.date')
check = var('request.query.check')
secret = 'mysecret'


if (hash(date + secret, 'sha256') == check) {
    respond('Valid')
}

respond('Not found', 404)
