#!/bin/sh
result=$(curl --header "Accept: */*" "https://api.papermc.io/v2/projects/paper/versions/$version/")
echo $result > /versions.txt
build=$(sed '1s/array =//' /versions.txt | jq '.builds | last')
echo Found build : $build
echo "https://api.papermc.io/v2/projects/paper/versions/$version/builds/$build/downloads/paper-$version-$build.jar"
curl --header "Accept: */*" "https://api.papermc.io/v2/projects/paper/versions/$version/builds/$build/downloads/paper-$version-$build.jar" --output "/minecraft/paper.jar"
sh /scripts/getViaversion.sh
sh /scripts/startPaperServer.sh