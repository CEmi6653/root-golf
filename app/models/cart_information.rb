class CartInformation < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '4人乗り自動運転スコアパネル付' },
    { id: 3, name: '4人乗り自動運転'},
    { id: 4, name: '4人乗り手動運転スコアパネル付'},
    { id: 5, name: '4人乗り手動運転'},
  ]
 
 include ActiveHash::Associations
 has_many :tweets
end
