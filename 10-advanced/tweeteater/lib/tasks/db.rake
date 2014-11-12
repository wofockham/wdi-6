namespace :db do
  desc "Completely destroy and regenerate the database with new seed data"
  task :regenerate => :environment do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['db:seed'].invoke
  end
end
