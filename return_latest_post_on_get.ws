if (var('request.method') == 'POST') {
    store('latest_request', var('request.content'));
} else {
    latest = var('latest_request');
    if (latest) {
        set_response(latest);   
    }
}
