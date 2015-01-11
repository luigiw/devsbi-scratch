devsbi = angular.module('devsbi',[
  'ngRoute',
  'templates',
  'UserApp',
  'devsbiControllers'
])

devsbi.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: 'index.html'
        controller: 'IndexController'
        public: true
        login: true
      ).when('/home',
        templateUrl: 'home.html'
        controller: 'HomeController'
      ).when('/login',
        templateUrl: 'login.html'
        public: true
        signup: true
      ).when('/signup',
        templateUrl: 'signup.html'
        public: true
      ).otherwise(
        redirectTo: '/'
      )
])
.run(
  (user)->
    user.init(
      appId: '54a35f3125047'
    )
)


devsbiControllers = angular.module('devsbiControllers', [])
devsbiControllers.controller('IndexController', [ '$scope',
  ($scope)->
])

