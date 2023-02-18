class Tenant < ApplicationRecord
 has_many :leases, dependent: :destroy
 has_many :apartments, through: :leases

 # name (must be present)
 validates :name, presence: true
# age (must be >= 18)
 validates :age, numericality: { greater_than_or_equal_to: 18 }
end
