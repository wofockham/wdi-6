User.destroy_all
Tweet.destroy_all

FactoryGirl.create_list :user_with_tweets, 100
