require 'rails_helper'

RSpec.describe Sport, type: :model do
  before do
    @sport = FactoryBot.build(:sport)
  end
  describe '募集新規登録' do
    context '募集登録できること' do
      it '全て正常で入力内容に問題ない' do
        expect(@sport).to be_valid
      end
    end

    context '募集登録できないこと' do
      it '画像を1枚つけることが必須であること' do
        @sport.image = nil
        @sport.valid?
        expect(@sport.errors.full_messages).to include("Image can't be blank")
      end
      it 'タイトルが必須であること' do
        @sport.title = ''
        @sport.valid?
        expect(@sport.errors.full_messages).to include("Title can't be blank")
      end
      it '活動内容が必須であること' do
        @sport.sport_text = ''
        @sport.valid?
        expect(@sport.errors.full_messages).to include("Sport text can't be blank")
      end
      it 'カテゴリーが必須であること' do
        @sport.category_id = ''
        @sport.valid?
        expect(@sport.errors.full_messages).to include("Category can't be blank")
      end
      it 'カテゴリーが「1」では登録できないこと' do
        @sport.category_id = '1'
        @sport.valid?
        expect(@sport.errors.full_messages).to include("Category must be other than 1")
      end
      it '活動地域が必須であること' do
        @sport.area_id = ''
        @sport.valid?
        expect(@sport.errors.full_messages).to include("Area can't be blank")
      end
      it '活動地域が「1」では登録できないこと' do
        @sport.area_id = '1'
        @sport.valid?
        expect(@sport.errors.full_messages).to include("Area must be other than 1")
      end
      it '参加費が必須であること' do
        @sport.price = ''
        @sport.valid?
        expect(@sport.errors.full_messages).to include("Price can't be blank")
      end
    end
  end
end
