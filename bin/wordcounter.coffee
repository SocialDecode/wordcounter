class WordCounter
	constructor : ->
		@memory = {}
	count : (string,minLen=2)->
		string = string.replace(/[,\.:;\t\n…"']/g,' ')
		words = string.split(/\s/).filter((e)-> e.length > minLen)
		for word in words
			@memory[word] ?= 0
			@memory[word]++
	report : ->
		arr = []
		for own k,v of @memory
			arr.push [k,v]
		arr.sort (a,b)-> b[1] - a[1]
		return arr
	raw : -> return @memory

module.exports = WordCounter