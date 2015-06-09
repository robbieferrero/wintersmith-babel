### A Wintersmith plugin. ###

fs = require 'fs'
babel = require 'babel-core'

module.exports = (env, callback) ->
  config = env.config.babel || {}

  class BabelPlugin extends env.ContentPlugin

    constructor: (@filepath, @text) ->

    getFilename: ->
      @filepath.relative

    getView: -> (env, locals, contents, templates, callback) ->
      callback null, new Buffer(babel.transform(@text, config).code)

  BabelPlugin.fromFile = (filepath, callback) ->
    fs.readFile filepath.full, (error, result) ->
      if not error?
        plugin = new BabelPlugin filepath, result.toString()
      callback error, plugin

  env.registerContentPlugin 'scripts', config.pattern || '**/*.*(js|es|es6|jsx)', BabelPlugin

  callback()
