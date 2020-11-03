requestUrl = 'https://webhook.site/357a5c55-aaa2-4a79-bad6-ebc6bb37bda2'

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
