class AverageAmount < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '2000~4000円' },
    { id: 3, name: '3000~5000円' },
    { id: 4, name: '4000~6000円' },
    { id: 5, name: '5000~7000円' },
    { id: 6, name: '6000~8000円' },
    { id: 7, name: '7000~9000円' },
    { id: 8, name: '8000~10000円' },
    { id: 9, name: '9000~11000円' },
    { id: 10, name: '10000~12000円' },
    { id: 11, name: '11000~13000円' },
    { id: 12, name: '12000~14000円' },
  ]
 include ActiveHash::Associations
 has_many :users

end