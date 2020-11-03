requestUrl = 'https://example.com/api/upload-file'

multiPartTemplate = '
--{}
    
Content-Disposition: form-data; name="file[]"; filename="{}"
Content-Type: {}

{}

--{}'
multiPartBoundary = '_BOUNDARY_'

requestBody = ''
requestMethod = 'POST'
requestHeaders = [
    'Content-Type: multipart/form-data; boundary='+multiPartBoundary,
]

for (file in files()) {
    requestBody = requestBody + multiPartTemplate.format(
        multiPartBoundary,
        file['filename'],
        file['content_type'],
        file_content(file['id']),
        multiPartBoundary
    )
}

request(requestUrl, requestBody, requestMethod, requestHeaders, true)
