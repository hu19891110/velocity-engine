#!/bin/sh

CLASSPATH=.:../bin/classes

for jar in ../build/lib/*.jar
do
    CLASSPATH=${CLASSPATH}:${jar}
done

java -cp ${CLASSPATH} org.apache.velocity.test.Test $1 > output 2>&1
