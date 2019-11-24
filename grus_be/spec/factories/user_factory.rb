require 'faker'

FactoryBot.define do 
  factory :user do
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.middle_name }
    last_name { Faker::Name.last_name }
    sequence(:username) { |n| "#{first_name}.#{last_name}_#{n}" }
    motto { Faker::Quotes::Shakespeare.hamlet }
    created_by { "Tester" }
    modified_by { "Tester" }
  end
end