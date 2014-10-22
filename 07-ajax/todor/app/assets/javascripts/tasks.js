$(document).ready(function () {
  fetchTasks();

  $('#new_task').on('submit', function (e) {
    e.preventDefault();

    // Submit the form via AJAX.
    $.ajax('/tasks', {
      type: 'POST',
      data: {
        'task[description]': $('#task_description').val()
      }
    }).done(fetchTasks);

  });
});

var fetchTasks = function () {
  $.ajax('/tasks.json').done(function (tasks) {
    // Show each task on the page.

    $('#tasks').empty();

    $.each(tasks, function (index, task) {
      var $task = $('<li></li>');
      var $taskLink = $('<a></a>');
      $taskLink.text(task.description);
      $taskLink.attr('href', '/tasks/' + task.id);
      $taskLink.appendTo($task);
      $task.append(' Completed: ' + task.completed);
      $task.appendTo('#tasks');
    });
  });
};