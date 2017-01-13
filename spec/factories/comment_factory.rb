FactoryGirl.define do
  
  factory :comment do
 	 user 
 	 body "test"
 	 rating {rand(1..5)}
  

    factory :invalid_comment do
  	  body nil
    end
  end
end