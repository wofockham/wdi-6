$(document).ready(function () {
  fetchTasks();

  $('#new_task').on('ajax:success', function () {
    fetchTasks();
    $('#task_description').val(''); // Reset the input
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
  var template = $('#taskTemplate').html();
  var taskHTML = Handlebars.compile(template);

  var $task = $( taskHTML(task) );
  $task.appendTo('#tasks');

  $task.find('button').on('click', function () {
    var deleteUrl = '/tasks/' + task.id;
    console.log('about to delete at', deleteUrl);
    $.ajax(deleteUrl, {
      type: 'DELETE',
      dataType: 'json'
    }).done(fetchTasks);
  });

  $task.find(':checkbox').on('change', function () {
    var checked = $(this).is(':checked'); // Returns only true or false.
    var url = '/tasks/' + task.id;

    if (checked) {
      url += '/complete';
    } else {
      url += '/uncomplete';
    }

    $.post(url);
  });

  // var $completed = $('<input type="checkbox">');
  // if (task.completed) {
  //   $completed.attr('checked', 'checked');
  // }

  // $taskLink.text(task.description);
  // $taskLink.attr('href', '/tasks/' + task.id);
  // $taskLink.appendTo($task);
  // $task.prepend($completed);
  // $task.append($deleteLink);
}
