class PlayHistry < ActiveHash::Base
  self.data = [
    { id: 1, name: '--'},
    { id: 2, name: '初心者(0~2年以内)'},
    { id: 3, name: '中級者(3~5年以内)'},
    { id: 4, name: '上級者(6~9以内)'},
    { id: 5, name: '達人(10年以上)'},
  ]

  include ActiveHash::Associations
  has_many :users

end
