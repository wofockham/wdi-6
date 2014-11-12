FactoryGirl.define do
  factory :user do |f|
    f.sequence(:name) { Faker::Name.name }
    f.sequence(:email) { |n| "test#{n}@example.com" }
  end

  factory :tweet do |f|
    f.sequence(:post) { Faker::Lorem.sentence }
  end
end
