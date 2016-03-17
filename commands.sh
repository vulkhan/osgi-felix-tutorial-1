#!/bin/bash


# Modify this line; give the location of the Apache Felix implementation
LIB_PATH=/c/LIBS/org.apache.felix.main.distribution-5.4.0/felix-framework-5.4.0


# Do not modify from here
mkdir ./classes


# Tutorial 1
javac -d ./classes/ tutorial_example1/*.java -cp $LIB_PATH/bin/felix.jar
jar cfmv example1.jar tutorial_example1/manifest.mf -C ./classes tutorial/example1


# Tutorial 2
javac -d ./classes/ tutorial_example2/*.java -cp $LIB_PATH/bin/felix.jar
jar cfmv example2.jar tutorial_example2/manifest.mf -C ./classes tutorial/example2


# Tutorial 2
javac -d ./classes/ tutorial_example2b/*.java -cp ./example2.jar:$LIB_PATH/bin/felix.jar
jar cfmv example2b.jar tutorial_example2b/manifest.mf -C ./classes tutorial/example2b


# Tutorial 3
javac -d ./classes/ tutorial_example3/*.java -cp ./example2.jar:$LIB_PATH/bin/felix.jar -Xlint:unchecked
jar cfmv example3.jar tutorial_example3/manifest.mf -C ./classes tutorial/example3

