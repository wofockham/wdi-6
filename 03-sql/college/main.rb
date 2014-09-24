require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDERR)

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'college.db'
)

require_relative 'student'
require_relative 'course'

binding.pry