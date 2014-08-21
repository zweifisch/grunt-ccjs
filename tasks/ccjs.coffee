path = require 'path'
ccjs = require 'ccjs'

stripExt = (filename)->
	filename.substr 0, filename.length - path.extname(filename).length

module.exports = (grunt)->

	grunt.registerTask 'ccjs', 'grunt plugin for ccjs', ->

		files = grunt.config.get ['ccjs', 'files']
		{root, coffee} = grunt.config.get ['ccjs', 'options'], root:'./'
		compilers = {}

		if coffee
			_coffee = require 'coffee-script'
			compilers.coffee = (js)->
				_coffee.compile js, bare: on

		process = (src, dest)->
			realpath = stripExt path.join root, src
			grunt.file.write dest, ccjs.bundle realpath, root, compilers
			grunt.log.writeln "File #{dest} created."

		process src, dest for dest,src of files
