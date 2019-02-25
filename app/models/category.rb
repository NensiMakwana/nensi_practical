class Category < ApplicationRecord
  belongs_to :vehicle
  has_many :sub_categories, dependent: :destroy
end
