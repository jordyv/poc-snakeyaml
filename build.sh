#!/usr/bin/env bash
JAVA_PATH=/Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home/bin/

$JAVA_PATH/javac src/pocsnakeyaml/PocScriptEngineFactory.java
$JAVA_PATH/jar -cvf poc.jar -C src/ .
