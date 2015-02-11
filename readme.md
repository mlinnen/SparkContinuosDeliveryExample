# Welcome to Continuous Delivery on Spark #
A Spark Core project showing how a continuous delivery model could be implemented.

This example repository uses The Spark Core as an IoT device connected to Spark.IO cloud service that allows for you to upload source files that will compile and the binary gets deploy to your device.  Effectively this allows for you to setup a continuous delivery model for connected devices.  You can find out more about the Spark Core and Spark.io by going to [www.spark.io](http://www.spark.io "www.spark.io").

I used [psake](https://github.com/psake/psake "psake") as the build scripting tool and [Team City](https://www.jetbrains.com/teamcity/ "Team City") as the build engine to compile and deploy my code whenever I check it in.  You could use a more stable github workflow where you deliver off of the master branch and develop off of another branch.  That way you could decide when it is time to deploy you would merge your dev branch into your master branch and the changes would get deployed.       

##Default.ps1##

This is the build script that takes a few parameters that Team City provides.  The parameters are passed into the build script so that you don't have to keep your secrete Device Id and Application Token in the source code.  This script really only has one task target called Deploy.  Its job is to shell out to curl.exe and upload the source file to the spark.io service.

##Limitations##

- Works on single file sources only at this time
- If there is a compile error the build does not fail
- If you edit the readme and check in the changes then your spark core gets updated even though no real source got changed

##Team City Setup##
I assume here that you have used Team City before or at least you can find what you need in their documents.  I have this sample hooked up to GitHub of course but you can use many other source control options with Team City.


1. Create a build
2. Setup the source control
3. Add a Build Step that is a Powershell Script
4. Test the build by manually triggering it
5. Change the trigger on the build to be on checkin


##Enhancements##
- Get this working on a free hosted build platform
- Use a Raspberry PI as the build server
- Remove the dependency of curl.exe and do the REST api call using powershell
- Make sure a broken build compile shows up as failed
- Add in multi-file support
- Don't trigger a build if you change the read me
- If the Spark.io service is down fail the build