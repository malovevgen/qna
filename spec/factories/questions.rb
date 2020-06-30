FactoryBot.define do
  factory :question do
    transient do
      number { true }
    end
    sequence(:title) { |n| "MyString#{" #{n}" if number}" }
    sequence(:body) { |n| "MyText#{" #{n}" if number}" }

    trait :invalid do
      title { nil }
    end
  end
end
