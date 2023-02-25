class Ride < ApplicationRecord
  belongs_to :beach

  validates :date, presence: true
  validates :passenger_count, presence: true
  validates :board_capacity, presence: true
end
