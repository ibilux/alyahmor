#/usr/bin/sh
# Build pyArabic package

default: all
# Clean build files
clean:
	
backup: 
	
#create all files 
all: 

# Publish to github
publish:
	git push origin master 

md2rst:
	pandoc -s -r markdown -w rst README.md -o README.rst
md2html:
	pandoc -s -r markdown -w html README.md -o README.html

wheel:
	sudo python setup.py bdist_wheel
wheel3:
	sudo python3 setup.py bdist_wheel
install:
	sudo python setup.py install
install3:
	sudo python3 setup.py install
sdist:
	sudo python setup.py sdist
upload:
	echo "use twine upload dist/Tashaphyne-0.3-py2-none-any.whl"

doc:
	epydoc -v --config epydoc.conf
test:
	cd tests;python test_genelex.py -f samples/text.txt -o output/text.csv > output/text.txt
testaffix:
	cd tests;python test_print_affix.py > output/affixes.csv

