FactoryGirl.define do 

  factory :user do
    email                 "cedie@hotmail.com"
    name                  "Chad Edie"
    password              "foobar"
    password_confirmation "foobar"
  end
end