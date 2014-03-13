BookApp = angular.module("BookApp", ["BookAppCtrls", "BookRouter", "BooksService"])

### Book router ###
BookRouter = angular.module("BookRouter", ["ngRoute"])

BookRouter.config(["$routeProvider", "$httpProvider"
  ($routeProvider, $httpProvider)->
    $routeProvider.when("/", 
      templateUrl: "/books"
      controller: "BooksCtrl"
  ).when("/books/:id", 
      templateUrl: "/books/show"
      controller: "BooksDetailsCtrl"
  )
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])