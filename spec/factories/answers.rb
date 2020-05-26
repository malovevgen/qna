FactoryBot.define do
  factory :answer do
    body { "MyText" }
    question { nil }
    foreign_key { "" }
  end
end
