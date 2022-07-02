FactoryBot.define do
  factory :event do
    eventname { "MyString" }
    first_day { "MyString" }
    last_day { "MyString" }
    place { "MyString" }
    content { "MyString" }
    user { nil }
  end
end
