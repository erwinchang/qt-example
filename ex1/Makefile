
all:
	cd src && qmake -project
	echo "greaterThan(QT_MAJOR_VERSION, 4): QT += widgets" >> src/src.pro
	cd src && qmake
	make -C src

clean:
	rm -f src/Makefile
	rm -f src/src.pro
	rm -f src/main.o
	rm -f src/src
