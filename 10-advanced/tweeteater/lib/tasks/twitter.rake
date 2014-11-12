namespace :twitter do
  desc "Nuke the Tweet and User data"
  task :clear => :environment do
    User.destroy_all
    Tweet.destroy_all
  end

  desc "Create :user_count fake users with lorem"
  task :lorem, [:user_count] => :environment do |t, args|
    FactoryGirl.create_list :user_with_tweets, args[:user_count].to_i
  end

  desc "Add live tweets from Twitter for :query to the database, returning :limit results"
  task :search, [:query, :limit] => :environment do |t, args|
    puts "Searching Twitter for #{ args[:query] }"
    puts "Returning only #{ args[:limit] } tweets"
    # YOUR CODE GOES HERE (and elsewhere)
  end
end
