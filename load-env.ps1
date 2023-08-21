# Read the contents of the .env file
$envContents = Get-Content -Path "qa.env"

# Parse the contents and set environment variables
foreach ($line in $envContents) {
    $key, $value = $line -split "=", 2
    $env:$key = $value
}
