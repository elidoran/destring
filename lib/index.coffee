
class Destring

  constructor: (options) ->

    @strings = options?.strings ? []

  add: (string) ->

    # TODO: may be an array of them

  remove: (string) ->

    # TODO: may be an array of them

  # return the id for this string, or `false`
  string: (string) ->

  # return the string for this id, or null
  id: (id) ->


# export a function which creates an instance
module.exports = (options) -> new Destring options

# export the class as a sub property on the function
module.exports.Destring = Destring
