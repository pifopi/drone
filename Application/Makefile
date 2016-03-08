COMPILATEUR = javac
OPTIONS = -deprecation -g
LIBRAIRIES =
SOURCES = Main.java
CLASS = ${SOURCES:.java=.class}

ifdef SystemRoot
    RM = del
else
    RM = rm -f
endif

all : ${CLASS}

%.class : %.java
	${COMPILATEUR} ${OPTIONS} $<

.PHONY: clean

clean :
	${RM} ${CLASS}