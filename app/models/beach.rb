class Beach < ApplicationRecord
  belongs_to :location
  has_many :rides, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 20 }
end
