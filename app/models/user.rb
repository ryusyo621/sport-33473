class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
         validates_format_of :password, with: PASSWORD_REGEX
         
  with_options presence: true do
    validates :nickname
    with_options format: { with: /\A[ぁ-んァ-ン一-龥々]+\z/ } do
      validates :last_name 
      validates :first_name 
    end
    with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
      validates :kana_last_name 
      validates :kana_first_name 
    end
    validates :phone_number, length: { maximum: 11 }, format: { with: /\A[0-9]+\z/ }
    validates :birthday, format: { with: /\A\d{4}-\d{2}-\d{2}\z/ }
    validates :main_sport
  end
end
