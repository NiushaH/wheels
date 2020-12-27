class Ride < ApplicationRecord
  has_many :cars, foreign_key: :car_id, class_name: "Car"
  
  belongs_to :driver, foreign_key: :driver_user_id, class_name: "User"
  belongs_to :driver, through: :cars
  
  has_many :hitchhikers, foreign_key: :hitchhiker_user_id, class_name: "User"
  has_many :hitchhikers
end
