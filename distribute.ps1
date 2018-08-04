bash -c "uglifyjs leaflet-fullHash.js --compress --mangle -o leaflet-fullHash.min.js"
$dest = "/assets/js/leaflet/plugins/leaflet-fullHash/$((Get-Content .\package.json|ConvertFrom-Json).version)/leaflet-fullHash.min.js"
rclone copyto leaflet-fullHash.min.js "b2:factoriomaps$dest"
Remove-Item leaflet-fullHash.min.js
Write-Output "https://factoriomaps.com$dest"
