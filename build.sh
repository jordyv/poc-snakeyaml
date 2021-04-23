#!/usr/bin/env bash
if [ -z $JAVA_PATH ]; then
  JAVA_PATH=$HOME/Library/Java/JavaVirtualMachines/corretto-11.0.10/Contents/Home/bin
fi

echo "JAVA_PATH = $JAVA_PATH"

$JAVA_PATH/javac src/pocsnakeyaml/PocScriptEngineFactory.java
$JAVA_PATH/jar -cvf poc.jar -C src/ .
