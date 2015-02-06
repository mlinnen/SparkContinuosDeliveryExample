properties {
  $deviceId = $env:SparkDeviceId
  $token = $env:SparkToken
}

task default -depends Deploy

task Deploy { 
    $url = "https://api.spark.io/v1/devices/" + $deviceId + "?access_token=" + $token
    exec {
        remove-item alias:curl
        curl -X PUT -F file=@src\helloworld.ino "$url" -k
      }
}

task ? -Description "Helper to display task info" {
	Write-Documentation
}