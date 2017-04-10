class Room < ApplicationRecord
  has_many :joined_rooms, dependent: :destroy
  has_many :users, through: :joined_rooms
  has_many :messages, dependent: :destroy

  validates :name, presence: true
end
