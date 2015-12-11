WordCounter = require '../wordcounter'
wc = new WordCounter

console.time 'terminado en'

rl = require('readline').createInterface({
	terminal: false,
	input: require('fs').createReadStream(__dirname+'/lorem.txt')
})
lc = 0
rl.on 'line', (line)->
	lc++
	wc.count line,3

rl.on 'close', ->
	reporte = wc.report()

	console.log reporte.length, 'grupos'
	console.log lc, 'lineas'
	console.log reporte[0..20]
	console.log wc.raw()
	console.timeEnd 'terminado en'