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

// Here we compile our task template just once so we can reuse it repeatedly.
var taskHTML = Handlebars.compile($('#taskTemplate').html());

var addTask = function (task) {

  var $task = $( taskHTML(task) );
  $task.appendTo('#tasks');

  $task.find('button').on('click', function () {
    var deleteUrl = '/tasks/' + task.id;
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
}
