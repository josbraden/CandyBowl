CandyBowl: CandyBowl.java
	echo "Main-Class: CandyBowl" > manifest.txt
	javac CandyBowl.java
	jar cvfm CandyBowl.jar manifest.txt Bowl.class CandyBowl.class Professor.class TA.class
	rm Bowl.class CandyBowl.class Professor.class TA.class manifest.txt
class: CandyBowl.java
	javac CandyBowl.java
native: CandyBowl.java
	gcj -o CandyBowl CandyBowl.java --main=CandyBowl.java
