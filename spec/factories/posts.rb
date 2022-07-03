FactoryBot.define do
  factory :post do
    impressions { "MyString" }
    nickname { "MyString" }
    user { nil }
    event { nil }
  end
end
