CC=g++
CFLAGS=-Wall
OUT=synth
CPP=main.cpp RtAudio.cpp player.cpp maximilian.cpp
INSTALLPATH=/usr/local/bin/${OUT}

osx:
	${CC} ${CFLAGS} -D__MACOSX_CORE__ -o ${OUT} ${CPP} -framework CoreAudio -framework CoreFoundation -lpthread

linux:
	${CC} ${CFLAGS} -D__LINUX_ALSA__ -o ${OUT} ${CPP} -lasound -lpthread

install:
	cp ${OUT} ${INSTALLPATH}
