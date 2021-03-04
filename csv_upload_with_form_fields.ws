url = var('request.url')
set_header('content-type', 'text/html');

// Display file upload form and exit if HTTP method is not POST
if (var('request.method') != 'POST') {
    respond('
        <html>
            <head><title>Upload CSV</title></head>
            <body>
                <h1>Upload CSV</h1>
                <form action="{}" method="POST" enctype="multipart/form-data">
                    <div>
                        <label>
                            Date
                            <input type="text" name="date">
                        </label>
                    </div>
                    
                    <div>
                        <label>
                            Comment
                            <textarea name="comment"></textarea>
                        </label>
                    </div>
                
                    <div>
                        <label>Select file
                        <input type="file" name="file"/></label>
                    </div>
                    
                    <div>
                        <button type="submit">Upload</button>
                    </div>
                </form>
            </body>
        </html>
    '.format(url))
}

// Use a comma as delimiter and treat first row (0) as header row
array = csv_to_array(var('request.file.file.content'), ',', 0)

// If CSV can't be parsed, or there's less than 2 rows, fail
if (!array or array.length() < 2) {
    respond('
        <h1>Could not parse CSV</h1>
        <a href="{}">Upload again</a>
    '.format(url));
}

// Display the parsed CSV in JSON format 
respond('
    <h1>Upload successful</h1>
    <p><b>Date:</b> {}</p>
    <p><b>Comment:</b> {}</p>
    <pre>{}</pre>
    <p>
        <a href="{}">Upload again</a>
    </p>
'.format(
    var('request.form.date', 'No date supplied'),
    var('request.form.comment', 'No comment supplied'),
    json_encode(array),
    url
))
