class Property < ApplicationRecord
  belongs_to :property_type
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
end
