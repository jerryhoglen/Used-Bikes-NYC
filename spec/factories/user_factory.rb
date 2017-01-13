FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com}" }

	factory :user do
	  email 
    password "Password1"
    first_name "Jerry"
    last_name "Hoglen"
    admin false
	end

	factory :admin, class: User do
	  email
	  password "Password1"
	  admin true
	  first_name "Admin"
	  last_name "User"
	end
end


