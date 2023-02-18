class Apartment < ApplicationRecord
 has_many :leases, dependent: :destroy
 has_many :tenant, through: :leases
end
