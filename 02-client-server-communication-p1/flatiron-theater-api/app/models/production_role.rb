class ProductionRole < ApplicationRecord
  belongs_to :production

  # Validate Presence / Uniqueness of :role
  validates :role, presence: true, uniqueness: true
end
