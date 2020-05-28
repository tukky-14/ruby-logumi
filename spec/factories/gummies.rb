FactoryBot.define do

  factory :gummy do
    association :maker
    maker
    # maker {1}
    # maker_id
    # maker_id {1}
    product {"hoge"}
    content {"hogehogehogehoge"}
    image {"hoge.png"}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
  end

end