class Friend < ApplicationRecord
  validates :first_name, :email, :phone, :description, presence: true
end
