all:
	rm -rf speech
	mkdir -p speech
	cp manifest.json css/* html/* lib/* speech/
	cp images/mic.png speech/
	cd coffee && coffee -o ../speech -c *.coffee
	zip -9 -r -X speech-0.1.zip speech