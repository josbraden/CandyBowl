CandyBowl: CandyBowl.java
	echo "Main-Class: CandyBowl" > manifest.txt
	javac CandyBowl.java
	jar cvfm CandyBowl.jar manifest.txt Bowl.class CandyBowl.class Professor.class TA.class
	rm Bowl.class CandyBowl.class Professor.class TA.class manifest.txt
class: CandyBowl.java
	javac CandyBowl.java
native: CandyBowl.java
	gcj -o CandyBowl CandyBowl.java --main=CandyBowl
help:
	@echo "Targets: CandyBowl, class, native, help"
	@echo "    CandyBowl (default): creates executable .jar file"
	@echo "    class: Just compiles to classes with javac"
	@echo "    native: Tries to compile with GNU java comiler to native code"
