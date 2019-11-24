require 'faker'

stuff = %w(some most all none)

FactoryBot.define do
  factory :task do
    name { "Do #{stuff.sample} of the things" }
    description { "This is a sample task used for development" }
    created_by { "Tester" }
    modified_by { "Tester" }
    user
  end
end