FactoryGirl.define do
  factory :user do
    name     "Hartl"
    email    "hartl@xam.com"
    password "foobar"
    password_confirmation "foobar"
  end
end