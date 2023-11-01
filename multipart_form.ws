formFields = [
    'mykey': 'myvalue',
    'anotherkey': 'anothervalue'
]

requestUrl = 'https://example.com'
requestMethod = 'POST'
multiPartBoundary = '_BOUNDARY_'
requestHeaders = [
    'Content-Type: multipart/form-data; boundary='+multiPartBoundary,
]

multiPartTemplate = '
--{}
    
Content-Disposition: form-data; name="{}";

{}

--{}'

requestBody = ''

for (field in formFields.keys()) {
    requestBody = requestBody + multiPartTemplate.format(
        multiPartBoundary,
        field,
        formFields[field],
        multiPartBoundary
    )
}

request(requestUrl, requestBody, requestMethod, requestHeaders, true)
