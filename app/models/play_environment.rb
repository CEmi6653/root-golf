class PlayEnvironment < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '最高' },
    { id: 3, name: '爽快' },
    { id: 4, name: '通常' },
    { id: 5, name: '不便' },
    { id: 6, name: '改善してほしい'},
  ]

 include ActiveHash::Associations
 has_many :users
 
end