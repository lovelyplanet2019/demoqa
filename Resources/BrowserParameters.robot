

*** Variables ***
#Login Credentials and Webpage (To be migrated to variable file in the near future)
${Webpage}                          https://demoqa.com/dynamic-properties
${Browser}                          chromium
${Headless}                         false
&{Browser-Default-Capabilities}     acceptDownloads=true    ignoreHTTPSErrors=true    viewport={'width': 1920, 'height': 1080}
${Default-Timeout}                  30s



