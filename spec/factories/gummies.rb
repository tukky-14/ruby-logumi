FactoryBot.define do
  factory :gummy do
    product { "hoge" }
    content { "hogehogehogehoge" }
    image { "hoge.png" }
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
    maker
  end
end
