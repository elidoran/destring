# destring
[![Build Status](https://travis-ci.org/elidoran/destring.svg?branch=master)](https://travis-ci.org/elidoran/destring)
[![Dependency Status](https://gemnasium.com/elidoran/destring.png)](https://gemnasium.com/elidoran/destring)
[![npm version](https://badge.fury.io/js/destring.svg)](http://badge.fury.io/js/destring)
[![Coverage Status](https://coveralls.io/repos/github/elidoran/destring/badge.svg?branch=master)](https://coveralls.io/github/elidoran/destring?branch=master)

Configurable strings cache swaps between strings and their ID.

This package:

1. knows strings to replace instead of sending the whole string
2. can be pre-configured with strings
3. can learn strings during communications
4. can limit the number of strings in its cache
5. can limit the bytes of strings stored in its cache

See packages:

1. [endeo](https://www.npmjs.com/package/endeo)
2. [enbyte](https://www.npmjs.com/package/enbyte)
3. [debyte](https://www.npmjs.com/package/debyte)
4. [debyter](https://www.npmjs.com/package/debyter)

NOTE: placeholder


## Install

```sh
npm install destring --save
```


## Usage


```javascript
    // get the builder
var buildDestring = require('destring')

  // build one we can train
  , destring = buildDestring({
    // by default, there are no limits
    limit: 101,      // limit by *number* of strings
    bytes: 10 * 1024,// limit by bytes of strings
    minLength: 4,    // min chars in string to learn it
    maxLength: 100,  // avoid "learning" very long strings
    // which strings should it know already.
    // by default, it knows none.
    strings: [
      'key1', 'some value'
    ]
  })

  // get `which` string this is in the cache, its ID
  , which = destring.string('key1')

  // get the original string based on the `which` (ID)
  , string = destring.id(which)


// can teach it some strings to replace at any time.
destring.add(strings)
```


# [MIT License](LICENSE)
