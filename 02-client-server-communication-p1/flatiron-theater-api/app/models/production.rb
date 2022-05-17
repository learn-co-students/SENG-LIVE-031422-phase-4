class Production < ApplicationRecord
    has_many :production_roles
    has_many :tickets
    has_many :users, through: :tickets

    # GROUP ACTIVITY #2
    
    # Add Validation for "title" => Must Be Present / Unique
    validates :title, presence: true, uniqueness: true

    # validate :my_attr_validation

    # Add Validation for "budget" => Must Be Any Number Other Than 0
    validates :budget, numericality: { greater_than: 0 }
end
