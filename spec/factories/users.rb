FactoryBot.define do
  factory :user do
    nickname { 'たろう' }
    email { Faker::Internet.free_email }
    phone_number { '09012345678' }
    password { '00000f' }
    password_confirmation { password }
    last_name { '山田' }
    first_name { '太郎' }
    kana_last_name { 'ヤマダ' }
    kana_first_name { 'タロウ' }
    birthday { '2000-01-01' }
    main_sport { 'サッカー' }
  end
end