// Change this to your dropbox provider ID from here: https://webhook.site/providers
providerId = 19

files = json_path(var('request.content'), '.FlyerFile.*')

for (fileInfo in files) {

    // Download file from URL
    fileDownload = request(fileInfo['File'])
    
    // Check if file link invalid or expired
    if (fileDownload['status'] != 200) {
        echo(
            'Could not upload /FlyerFiles/%s, got status %s'.format(
                fileInfo['Name'],
                fileDownload['status']
            )
        )
        continue
    }

    // Execute Dropbox Upload File action
    action(
        'dropbox_upload_file',
        [
            'path': '/FlyerFiles/%s'.format(fileInfo['Name']),
            'body': fileDownload['content'],
            'mode': 'update',
            'provider_id': providerId
        ]
    )
    
    echo('Uploaded /FlyerFiles/%s'.format(fileInfo['Name']))
    
}
