FactoryBot.define do
  factory :question do
    sequence(:title) { |n| "MyString #{n}" }
    sequence(:body) { |n| "MyText #{n}" }
  end

  trait :invalid do
    title { nil }
  end
end
