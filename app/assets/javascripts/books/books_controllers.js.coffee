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
])

BookAppCtrls.controller("BooksDetailsCtrl",  ["$scope","$routeParams",($scope, $routeParams)->
    $scope.bookId = $routeParams.id
])