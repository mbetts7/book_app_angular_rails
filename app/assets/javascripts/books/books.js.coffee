BookApp = angular.module("BookApp", ["BookAppCtrls", "BookRouter"])

### Book router ###
BookRouter = angular.module("BookRouter", ["ngRoute"])

BookRouter.config(["$routeProvider",
  ($routeProvider)->
    $routeProvider.when("/", 
      templateUrl: "/books"
      controller: "BooksCtrl"
  ).when("/books/:id", 
      templateUrl: "/books/show"
      controller: "BooksDetailsCtrl"
  )
])