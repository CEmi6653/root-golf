class GolfCourseDifficult < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '初心者向け' },
    { id: 3, name: 'やや初心者向け' },
    { id: 4, name: '中級者向け' },
    { id: 5, name: 'やや上級者向け'},
    { id: 6, name: '上級者向け'},
    { id: 7, name: '達人・プロ向け'},
  ]
 
 include ActiveHash::Associations
 has_many :tweets
 
end