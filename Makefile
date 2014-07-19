LOCALE ?= en_US

GENERATED_FILES = \
	d3map.js \
	d3map.min.js

JS_FILES = \
	src/begin.js \
	src/core.js \
	src/utils.js \
	src/end.js

JS_COMPILER = uglifyjs

all: d3map.js d3map.min.js
d3map.js: $(JS_FILES)
d3map.min.js: $(JS_FILES)

d3map.js: Makefile
	rm -f $@
	cat $(filter %.js,$^) >> $@

d3map.min.js: Makefile
	rm -f $@
	$(JS_COMPILER) d3map.js --output $@

clean:
	rm -rf -- $(GENERATED_FILES)
