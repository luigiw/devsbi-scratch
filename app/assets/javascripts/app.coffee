devsbi = angular.module('devsbi',[
  'templates',
  'ngRoute',
  'controllers',
])

devsbi.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'IndexController'
      )
])

devsbiControllers = angular.module('devsbiControllers', [])
devsbiControllers.controller('IndexController', [ '$scope',
  ($scope)->
])

