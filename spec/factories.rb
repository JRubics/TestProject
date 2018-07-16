FactoryBot.define do
  factory :post do
    
  end
  factory :user do
    first_name "John"
    last_name  "Doe"
    email "a@asd.com"
    password "asdf"
    password_confirmation "asdf"
    biography "asd"
    image "rails.png" 
  end
end