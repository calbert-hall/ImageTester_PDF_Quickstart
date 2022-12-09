#Configuration
$env:APPLITOOLS_API_KEY = 'VJMt4z4djBoqW40fclJgEpLGuwGppgZ98m5wtUuWhru0110' # TODO - Put your Applitools API Key here! 
$env:APPLITOOLS_SERVER_URL = 'https://eyes.applitools.com' # Include your server URL here if on a private Applitools cloud. 
$env:APPLITOOLS_CONCURRENCY =  5 # Test Concurrency. 5 Allowed with free tier. Can experiment with this during trial period.

echo "`nConnecting to Applitools...`n"
java -Xmx2G -jar .\ImageTester.jar -st -th $env:APPLITOOLS_CONCURRENCY -f "./PDF_Testing"
echo "`nApplitools Testing Complete!"

mv .\PDF_Testing\* .\PDF_Archive # Moves PDFs to the archive. 
