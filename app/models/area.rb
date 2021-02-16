class Area < ActiveHash::Base
  self.data = [

    { id: 1, name: '---' },
    { id: 2, name: '霧島市国分' },
    { id: 3, name: '霧島市隼人' },
    { id: 4, name: '霧島市霧島' },
    { id: 5, name: '霧島市牧園' },
    { id: 6, name: '霧島市福山' },
    { id: 7, name: '霧島市横川' },
    { id: 8, name: '霧島市溝辺' }

  ]

  include ActiveHash::Associations
  has_many :sports
end
