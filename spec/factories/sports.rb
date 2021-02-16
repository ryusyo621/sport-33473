FactoryBot.define do
  factory :sport do
    title { '一緒にがんばってくれる方募集' }
    sport_text { '月4回、毎週水曜日に実施してます。' }
    category_id { '2' }
    area_id { '2' }
    price { '月1000円' }

    association :user

    after(:build) do |sport|
      # sport.image.attch(io:File.open('public/images/sample.jpg'), filename: 'sample.jpg')
      sport.image.attach(io: File.open('public/images/sample.jpg'), filename: 'sample.jpg')
    end
  end
end
