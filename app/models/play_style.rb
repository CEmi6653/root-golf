class PlayStyle < ActiveHash::Base
  self.data = [
   { id: 1, name: '--' },
   { id: 2, name: 'プレー環境' },
   { id: 3, name: 'コース難易度' },
   { id: 4, name: 'プレー料金' },
   { id: 5, name: '移動時間' },
  ]

 include ActiveHash::Associations
 has_many :users
 
end