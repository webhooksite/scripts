formFields = [
    'mykey': 'myvalue',
    'anotherkey': 'anothervalue'
]

requestUrl = 'https://webhook.site/25c4b582-b6a0-4ec9-94f0-c2d02f77701e?card=001F0E78'
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
