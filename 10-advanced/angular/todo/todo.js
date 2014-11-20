angular.module('todoApp', [])
  .controller('TodoController', ['$scope', function($scope) {
    $scope.todos = [
      {text: 'Demo Angular', done: true},
      {text: 'Finish demo', done: false}
    ];

    $scope.addTodo = function () {
      $scope.todos.push({text: $scope.todoText, done: false});
      $scope.todoText = '';
    };

    $scope.remaining = function () {
      var count = 0;
      angular.forEach($scope.todos, function (task) {
        if (task.done === false) {
          count += 1;
        }
      });
      return count;
    };
  }]);