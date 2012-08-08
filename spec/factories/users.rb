require 'factory_girl'

FactoryGirl.define do
	factory :user do
		name 'Test User'
    email 'example@example.com1'
    password 'please'
    password_confirmation 'please'
    fone '98826202'
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now
	end
end