_ = {}

(->
  # Return an array of the last n elements of an array. If n is undefined,
  # return just the last element.
  _.last = (array, n) ->
    array.pop()  if n is 'undefined'
    for i in array by -1
      array.slice()

  # Like last, but for the first elements
  _.first = (array, n) ->
    # TIP: you can often re-use similar functions in clever ways, like so:
    _.last array.reverse(), n

  # Call iterator(value, key, collection) for each element of collection
  _.each = (obj, iterator) ->

   # TIP: Here's an example of a function that needs to iterate, which we've
   # implemented for you. Instead of using a standard `for` loop, though,
   # it uses the iteration helper `each`, which you will need to write.

   # Returns the index at which value can be found in the array, or -1 if value
   # is not present in the array.
  _.indexOf = (array, target) ->
    result = -1
    _.each array, (item, index) ->
      result = index  if item is target and result is -1

    result

    # Return all elements of an array that pass a truth test.
  _.filter = (collection, iterator) ->

    # Return all elements of an array that don't pass a truth test.
  _.reject = (collection, iterator) ->
    # TIP: see if you can re-use _.select() here, without simply
    # copying code in and modifying it

    #Produce a duplicate-free version of the array.
  _.uniq = (array) ->

    # map() is a useful primitive iteration function that works a lot
    # like each(), but in addition to running the operation on all
    # the members, it also maintains an array of results.

    # Return the results of applying an iterator to each element.
  _.map = (array, iterator) ->

    # TIP: map is really handy when you want to transform an array of
    # values into a new array of values. _.pluck() is solved for you
    # as an example of this.

    # Takes an array of objects and returns and array of the values of
    # a certain property in it. E.g. take an array of people and return
    # an array of just their ages
  _.pluck = (obj, propertyName) ->
    _.map obj, (value) ->
      value[propertyName]

  # Calls the method named by methodName on each value in the list.
  _.invoke = (list, methodName) ->

  # Reduces an array or object to a single value by repetitively calling
  # iterator(previousValue, item) for each item. previousValue should be
  # the return value of the previous iterator call.
  #
  # You can pass in an initialValue that is passed to the first iterator
  # call. Defaults to 0.
  #
  # Example:
  #   var numbers = [1,2,3];
  #   var sum = _.reduce(numbers, function(total, number){
  #     return total + number;
  #   }, 0); // should be 6

  _.reduce = (obj, iterator, initialValue) ->

  _.contains = (collection, target) ->
    _.reduce collection, ((wasFound, item) ->
      return true  if wasFound
      item is target
    ), false

  _.every = (obj, iterator) ->

  _.any = (obj, iterator) ->

  _.extend = (obj) ->

  _.defaults = (obj) ->

  _.once = (func) ->
    alreadyCalled = false
    result = undefined
    ->
      unless alreadyCalled
        result = func.apply(this, arguments_)
        alreadyCalled = true
      result

  _.memoize = (func) ->

  _.delay = (func, wait) ->

  _.shuffle = (obj) ->

  _.sortBy = (collection, iterator) ->

  _.zip = ->

  _.flatten = (nestedArray, result) ->

  _.intersection = (array) ->

  _.difference = (array) ->

  _.chain = (obj) ->

  _.throttle = (func, wait) ->
).call this
