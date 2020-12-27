class Car < ApplicationRecord
  belongs_to :driver, foreign_key: :driver_user_id, class_name: "User"
end
