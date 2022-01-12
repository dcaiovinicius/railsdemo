class Friend < ApplicationRecord
  validates :first_name, :user_id, :email, :phone, :description, presence: true
  belongs_to :user
end
