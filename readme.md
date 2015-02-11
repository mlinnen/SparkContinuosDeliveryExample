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
TODO 