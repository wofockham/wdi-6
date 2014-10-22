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

    $('#task_description').val('');
  });
});

var fetchTasks = function () {
  $.ajax('/tasks.json').done(function (tasks) {
    // Show each task on the page.
    $('#tasks').empty();

    $.each(tasks, function (index, task) {
      addTask(task);
    });
  });
};

var addTask = function (task) {
  var $task = $('<li></li>');
  var $taskLink = $('<a></a>');

  var $deleteLink = $('<button>\u2718</button>');
  $deleteLink.on('click', function () {
    var deleteUrl = '/tasks/' + task.id;
    console.log('about to delete at', deleteUrl);
    $.ajax(deleteUrl, {
      type: 'DELETE',
      dataType: 'json'
    }).done(fetchTasks);
  });

  var $completed = $('<input type="checkbox">');
  if (task.completed) {
    $completed.attr('checked', 'checked');
  }

  $completed.on('change', function () {
    var checked = $(this).is(':checked'); // Returns only true or false.
    var url = '/tasks/' + task.id;

    if (checked) {
      url += '/complete';
    } else {
      url += '/uncomplete';
    }

    $.post(url);
  });

  $taskLink.text(task.description);
  $taskLink.attr('href', '/tasks/' + task.id);
  $taskLink.appendTo($task);
  $task.prepend($completed);
  $task.append($deleteLink);
  $task.appendTo('#tasks');
}
