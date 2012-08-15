require 'factory_girl'

FactoryGirl.define do
	factory :user do
		name 'Test User'
    sequence(:email) {|n| "person#{n}@example.com" }
    password 'please'
    password_confirmation 'please'
    fone '98826202'
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
	end
end