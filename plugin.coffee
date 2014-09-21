fs = require 'fs'

module.exports = (env, callback) ->
  class JsonDataPlugin extends env.ContentPlugin

    constructor: (@filepath, src) ->
      @src = src

    getFilename: ->
      @filepath.relative

    getView: -> (env, locals, contents, templates, callback) ->
      callback null, new Buffer(JSON.stringify(@src))

  JsonDataPlugin.fromFile = (filepath, callback) ->
    env.utils.readJSON filepath.full, (error, result) ->
      if not error?
        if not result["wintersmith-data-json"]
          return env.plugins.JsonPage.fromFile filepath, callback
        delete result["wintersmith-data-json"]
        plugin = new JsonDataPlugin filepath, result
      callback error, plugin

  env.registerContentPlugin 'json', '**/*.json', JsonDataPlugin

  # tell plugin manager we are done
  callback()
