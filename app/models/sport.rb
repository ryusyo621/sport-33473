class Sport < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :messages

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :category

  with_options presence: true do
    validates :title
    validates :sport_text
    validates :price
    validates :image

    with_options numericality: { other_than: 1 } do
      validates :category_id
      validates :area_id
    end
  end
end
