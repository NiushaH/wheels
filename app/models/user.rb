class User < ApplicationRecord
    has_many :cars, foreign_key: :car_id, class_name: "Car"
    has_many :rides, foreign_key: :ride_id, class_name: "Ride"

    # Self-Referencing
    has_many :hitchhikers, class_name: "User", foreign_key: "hitchhiker_user_id"
    has_many :hitchhikers, through: :rides

    has_many :drivers, class_name: "User", foreign_key: "driver_user_id"
    has_many :drivers, through: :rides   
end
