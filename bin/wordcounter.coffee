class WordCounter
	constructor : (sk = [])->
		@skipWords = sk
		@memory = {}
		@urlregex = /(\b(https?|ftp|file):\/\/[\-A-Z0-9+&@#\/%?=~_|!:,.;]*[\-A-Z0-9+&@#\/%=~_|])/ig
	count : (string,minLen=2)->
		links = string.match(@urlregex) || []
		string = string.replace(link,' ') for link in links
		string = string.replace(/[,\.:;\t\n…"']/g,' ')
		words = string.split(/\s/).filter(
			(e)-> e.length > minLen
		).filter(
			(e)=> @skipWords.indexOf(e.toLowerCase()) is -1
		)
		for word in words.concat(links)
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