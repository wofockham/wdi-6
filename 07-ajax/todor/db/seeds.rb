Task.destroy_all

Task.create :description => 'task one', :completed => false
Task.create :description => 'task two', :completed => false
Task.create :description => 'task three', :completed => true
