last_action = var('last_action')
current_time = to_date('now')

function update_last_action() {
    store('last_action', current_time)
}

if (!last_action) {
    update_last_action()
}

interval = date_interval(last_action, current_time);

if (interval < 5) {
    respond('ERROR: Less than 5 seconds passed between last action', 429)
}

update_last_action()
respond('OK: Within rate limit')
