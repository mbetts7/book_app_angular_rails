BookAppCtrls = angular.module("BookAppCtrls",[])

BookAppCtrls.controller("BooksCtrl", ["$scope", "$routeParams", "$http", ($scope, $routeParams, $http)->
  $scope.message = "hello world!"
  $scope.bookId = $routeParams.id

  $scope.fakeBooks = [
    id: 1
    title: "Happy Tails"
    description: "Fun times"
  ,
    id: 2
    title: "Bog Adventures"
    description: "Muddy days"
  ]
  console.log $scope.fakeBooks

  $http.get("/books.json").success (response)->
    $scope.fakeBooks = $scope.fakeBooks.concat(response)

  $scope.newBook = 
    title: "blah"
  $scope.saveBook = ->
    $http(
      method: "post"
      url: "/books.json"
      data:
        book: $scope.newBook
      headers:
        'X-CSRF-Token': $('meta[name=csrf-token]').attr('content')

    ).success (data) ->
      $scope.fakeBooks = $scope.fakeBooks.concat(data)
      console.log data
      return

  return

])


BookAppCtrls.controller("BooksDetailsCtrl",  ["$scope","$routeParams",($scope, $routeParams)->
    $scope.bookId = $routeParams.id
])