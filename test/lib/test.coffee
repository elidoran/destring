assert = require 'assert'

buildDestring = require '../../lib/index.coffee'

describe 'test destring', ->

  it 'should build', -> assert buildDestring()

  it 'should ignore a unknown string'
  it 'should return id for known string'
  it 'should learn a string when instructed to'
  it 'should learn a string when allowed to'

  it 'should refuse to learn when count limit is reached'
  it 'should refuse to learn when bytes limit is reached'
  it 'should refuse to learn when min length isnt reached'
  it 'should refuse to learn when max length is exceeded'
