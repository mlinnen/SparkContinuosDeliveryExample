properties {
  $deviceId = $env:SparkDeviceId
  $token = $env:SparkToken
  $base_dir = resolve-path .
  $curl = "$base_dir\lib\curl\curl.exe"
}

task default -depends Deploy

task Clean {
}

task Deploy { 
    $url = "https://api.spark.io/v1/devices/" + $deviceId + "?access_token=" + $token
    exec {
        .$curl -X PUT -F file=@src\helloworld.ino "https://api.spark.io/v1/devices/" -k
      }
} -depends Clean

task ? -Description "Helper to display task info" {
	Write-Documentation
}