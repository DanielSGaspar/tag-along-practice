class Location < ApplicationRecord
  has_many :beaches, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 20 }
end
