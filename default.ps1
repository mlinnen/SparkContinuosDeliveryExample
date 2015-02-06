properties {
  $deviceId = $env:SparkDeviceId
  $token = $env:SparkToken
}

task default -depends Deploy

task Clean {
}

task Deploy { 
    $url = "https://api.spark.io/v1/devices/" + $deviceId + "?access_token=" + $token
    exec {
        &.\lib\curl\curl.exe -X PUT -F file=@src\helloworld.ino "$url" -k
      }
} -depends Clean

task ? -Description "Helper to display task info" {
	Write-Documentation
}