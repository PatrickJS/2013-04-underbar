(function() {
  var _;

  _ = {};

  (function() {
    _.last = function(array, n) {
      var i, _i, _results;

      if (n === 'undefined') {
        array.pop();
      }
      _results = [];
      for (_i = array.length - 1; _i >= 0; _i += -1) {
        i = array[_i];
        _results.push(array.slice());
      }
      return _results;
    };
    _.first = function(array, n) {
      return _.last(array.reverse(), n);
    };
    _.each = function(obj, iterator) {};
    _.indexOf = function(array, target) {
      var result;

      result = -1;
      _.each(array, function(item, index) {
        if (item === target && result === -1) {
          return result = index;
        }
      });
      return result;
    };
    _.filter = function(collection, iterator) {};
    _.reject = function(collection, iterator) {};
    _.uniq = function(array) {};
    _.map = function(array, iterator) {};
    _.pluck = function(obj, propertyName) {
      return _.map(obj, function(value) {
        return value[propertyName];
      });
    };
    _.invoke = function(list, methodName) {};
    _.reduce = function(obj, iterator, initialValue) {};
    _.contains = function(collection, target) {
      return _.reduce(collection, (function(wasFound, item) {
        if (wasFound) {
          return true;
        }
        return item === target;
      }), false);
    };
    _.every = function(obj, iterator) {};
    _.any = function(obj, iterator) {};
    _.extend = function(obj) {};
    _.defaults = function(obj) {};
    _.once = function(func) {
      var alreadyCalled, result;

      alreadyCalled = false;
      result = void 0;
      return function() {
        if (!alreadyCalled) {
          result = func.apply(this, arguments_);
          alreadyCalled = true;
        }
        return result;
      };
    };
    _.memoize = function(func) {};
    _.delay = function(func, wait) {};
    _.shuffle = function(obj) {};
    _.sortBy = function(collection, iterator) {};
    _.zip = function() {};
    _.flatten = function(nestedArray, result) {};
    _.intersection = function(array) {};
    _.difference = function(array) {};
    _.chain = function(obj) {};
    return _.throttle = function(func, wait) {};
  }).call(this);

}).call(this);
