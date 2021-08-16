// Send an SMS with Twilio using WebhookScript

accountId = 'ACdXXXXX'
secret = '7fc199XXXXX'

body = query([
    'From': 'test',
    'Body': 'Hello World',
    'To': '+45 28254197',
])

resp = request(
    'https://api.twilio.com/2010-04-01/Accounts/' + accountId + '/Messages.json',
    body,
    'POST',
    [
        'Content-Type: application/x-www-form-urlencoded',
        'Authorization: Basic ' + base64_encode(accountId + ':' + secret)
    ]
)
