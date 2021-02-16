FactoryBot.define do
  factory :sport do
    title { '一緒にがんばってくれる方募集' }
    sport_text { '月4回、毎週水曜日に実施してます。' }
    category_id { 2 }
    area_id { 2 }
    price { '月1000円' }

    association :user

    after(:build) do |sport|
      sport.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end
