#!/usr/bin/env bash

#JAVA_HOME="/Users/Pavel.Sergeev/Library/Java/JavaVirtualMachines/adopt-openjdk-14.0.2/Contents/Home"
JAVA_HOME="/Users/Pavel.Sergeev/work/intellij/fleet/build/build/jdk/Contents/Home"

JPACKAGE=$JAVA_HOME/bin/jpackage

rm -rf Foo.app
rm -rf inputs/*
$JAVA_HOME/bin/jar cf inputs/Foo.jar -C out/production/Foo .

#$JAVA_HOME/bin/java -cp inputs/Foo.jar Foo

$JPACKAGE --input inputs/ \
  --name Foo \
  --main-jar Foo.jar \
  --main-class Foo \
  --type app-image \
  --java-options '--enable-preview'