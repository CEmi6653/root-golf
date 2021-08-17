class TravelTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '10~15分' },
    { id: 3, name: '15~20分' },
    { id: 4, name: '25~30分' },
    { id: 5, name: '35~40分' },
    { id: 6, name: '45~50分' },
    { id: 7, name: '55~60分' },
    { id: 8, name: '60~70分' },
    { id: 9, name: '75~90分' },
  ]
 
 include ActiveHash::Associations
 has_many :users

end