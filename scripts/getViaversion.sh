echo "Downloading latest ViaVersion"
curl -L --header "Accept: */*" "https://api.spiget.org/v2/resources/19254/download" --output "/minecraft/plugins/ViaVersion.jar"
echo "Downloading latest ViaBackwards"
curl -L --header "Accept: */*" "https://api.spiget.org/v2/resources/27448/download" --output "/minecraft/plugins/ViaBackwards.jar"
