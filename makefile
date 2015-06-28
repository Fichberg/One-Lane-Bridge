JFLAGS = -g
JC = javac
.SUFFIXES: .java .class

.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = \
	OneLaneBridge.java \
	Monitor.java \
	Car.java \
	Chronometer.java

default: classes
classes: $(CLASSES:.java=.class)
clean:
	$(RM) *.class
