url = var('request.url')

if (var('$request.method$') != 'POST') {
    respond('
        <html>
            <head><title>Upload CSV</title></head>
            <body>
                <h1>Upload CSV</h1>
                <form action="{}" method="POST" enctype="multipart/form-data">
                    <input type="file" name="file"/>
                    <button type="submit">Upload</button>
                </form>
            </body>
        </html>
    '.format(url))
}

array = csv_to_array(var('request.file.file.content'), ',', 0)

if (!array or array.length() < 2) {
    respond('
        <h1>Could not parse CSV</h1>
        <a href="{}">Upload again</a>
    '.format(url));
}

respond('
    <h1>Upload successful</h1>
    <pre>{}</pre>
    <p>
        <a href="{}">Upload again</a>
    </p>
'.format(json_encode(array), url))
