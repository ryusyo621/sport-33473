class Price_pattern < ActiveHash::Base
  self.data = [

    { id: 1, name: '---' },
    { id: 2, name: '月' },
    { id: 3, name: '参加毎' },
    # { id: 4, name: '参加毎' }

  ]

  include ActiveHash::Associations
  has_many :sports
end