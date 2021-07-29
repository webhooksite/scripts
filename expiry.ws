expiry_dates = [
    'item1': [
        'expiry': '2021-08-01T00:00:00.000000Z',
        'url': 'https://example.com',
    ],
    'item2': [
        'expiry': '2021-02-01T00:00:00.000000Z',
        'url': 'https://example.com',
    ],
]

itemId = var('request.query.item', '')

if (!expiry_dates.has(itemId)) {
    respond('Item not found', 404)
}

item = expiry_dates[itemId]

interval = date_interval(to_date('now'), item['expiry'])

if (interval < 0) {
    respond('Item expired', 404)
}

respond('The link is ' + item['url'])
