class Category < ActiveHash::Base
  self.data = [

    { id: 1, name: '---' },
    { id: 2, name: '野球' },
    { id: 3, name: 'サッカー' },
    { id: 4, name: 'バスケットボール' },
    { id: 5, name: 'バレーボール' },
    { id: 6, name: '剣道' },
    { id: 7, name: '柔道' },
    { id: 8, name: '空手' },
    { id: 9, name: 'テニス' },
    { id: 10, name: 'バトミントン' },
    { id: 11, name: 'フットサル' }
    # { id: 12, name: '空手' },
    # { id: 13, name: '空手' },
    # { id: 14, name: '空手' },
    # { id: 15, name: '空手' },
    # { id: 16, name: '空手' },

  ]

  include ActiveHash::Associations
  has_many :sports
end
