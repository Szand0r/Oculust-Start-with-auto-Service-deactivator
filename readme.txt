I hate the Service and the phone-home. But i dont like to start/stop the Service with batches... 
Now i have one Batch File created... they start the Service... looks for the Oculus Client if it's running... 
when not it will be started... Now the Batch is waiting for close of the OclulusClient... 
When you close the Client, the Service will be deactivated again...

Super Easy and no all 5 seconds phone home to Facebook...
If the Line "C:\Program Files\Oculus\Support\oculus-client\OculusClient.exe" isn't correct (i think its standard?) 
then u can change it. Delete the original Oculus Startmenu Entry and make a Link to the Batch File :) Works great.

Hope you enjoy.