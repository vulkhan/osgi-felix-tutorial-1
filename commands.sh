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


# Tutorial 4
javac -d ./classes/ tutorial_example4/*.java -cp ./example2.jar:$LIB_PATH/bin/felix.jar -Xlint:unchecked
jar cfmv example4.jar tutorial_example4/manifest.mf -C ./classes tutorial/example4


# Tutorial 5
javac -d ./classes/ tutorial_example5/*.java -cp ./example2.jar:$LIB_PATH/bin/felix.jar -Xlint:unchecked
jar cfmv example5.jar tutorial_example5/manifest.mf -C ./classes tutorial/example5


# Tutorial 6
javac -d ./classes/ tutorial_example6/*.java -cp ./example2.jar:$LIB_PATH/bin/felix.jar -Xlint:unchecked
jar cfmv example6.jar tutorial_example6/manifest.mf -C ./classes tutorial/example6


# Tutorial 7
javac -d ./classes/ tutorial_example7/*.java -cp ./example6.jar:$LIB_PATH/bin/felix.jar -Xlint:unchecked
jar cfmv example7.jar tutorial_example7/manifest.mf -C ./classes tutorial/example7


# Tutorial 8
# Not working: missing servicebinder jar file
# SERVICEBINDER_PATH=???
#javac -d ./classes/ tutorial_example8/*.java -cp ./example2.jar:./example6.jar:$SERVICEBINDER_PATH/servicebinder.jar:$LIB_PATH/bin/felix.jar
#jar cfmv example8.jar tutorial_example8/manifest.mf -C ./classes tutorial/example8
