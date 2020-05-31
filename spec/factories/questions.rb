FactoryBot.define do
  factory :question do
    sequence(:title) { |n| "MyString #{n}" }
    sequence(:body) { |n| "MyText #{n}" }

    trait :invalid do
      title { nil }
    end
  end
end
