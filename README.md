WordCounter
===============

This little repo can receive a stream of texts and count all the words grouped by incidences.  

##Install

	npm install --save word-counter

##Usage

~~~~Javascript
	var WordCounter = require('word-counter');
	var wc = new WordCounter();

	wc.count("string of several words in this string");

	var report = wc.report();

	console.log(report);

	/*
		[ [ 'string', 2 ],
		[ 'several', 1 ],
		[ 'words', 1 ],
		[ 'this', 1 ] ]
	*/
	
	console.log(wc.raw());

	/*
		{ string: 2, several: 1, words: 1, this: 1 }
	*/
~~~~

##Definitions
### wc.count(STRING [,minLen])
Counts the words inside a given string.

- STRING: (Required) Any type of text string to count the words
- minLen: (Optional) The minimum length of word to be counted, default=2

### wc.report()
Returns an ordered array of [Word,quantity]. No params needed

### wc.raw()
Returns the raw object of words (use it wisely). No params needed

##Demo
Refer to ```test/test.coffee``` or just run ```npm test```
