'use strict'
through       = require 'through2'
assign        = require 'object-assign'
{PluginError} = require 'gulp-util'

createPluginError = (message) ->
  new PluginError 'gulp-ejsmin', message

ejsMin = (options) ->
  dafault = {
    removeComment: false
  }

  options = assign dafault, options

  through.obj (file, enc, done) ->
    if file.isNull()
      @push file
      return done()

    if file.isStream()
      @emit 'error', createPluginError(
        'stream content is not supported'
      )
      return done()

    input = file.contents.toString()
    output = if options.removeComment then input.replace(/<!--([\s\S]*?)-->/g, '') else input
    output = output.replace(/\n+[\s]*/g, '')

    file.contents = new Buffer output
    @push file
    done()

module.exports = ejsMin
