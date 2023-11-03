FactoryBot.define do
  factory :user_post do
    body { "MyText" }
    user { nil }
  end
end
