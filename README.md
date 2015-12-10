WordCounter
===============

This little repo can receive a stream of texts and count all the words grouped by incidences.  

##Install

		npm install --save wordcounter

##Usage

		WordCounter = require('wordcounter');
		wc = new WordCounter();

		wc.count("string of several words in this string");

		report = wc.report();

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

##Demo
Refer to ```test/test.coffee``` or just run ```npm test```