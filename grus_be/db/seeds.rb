# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'factory_bot_rails'

case Rails.env
when 'development'
  thing = FactoryBot.create_list(:user, 3)
  binding.pry
end