class Vehicle < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :sub_categories, through: :categories
  has_one_attached :vehicle_image

  # The following is needed to support deletion
  # attribute :remove_vehicle_image, :boolean
  # after_save -> { vehicle_image.purge }, if: :remove_vehicle_image

  rails_admin do
    field :name
    field :color
    field :company_name
    field :categories
    field :sub_categories
    field :vehicle_image do
      formatted_value do
        bindings[:view].tag(:img, { :src => bindings[:object].vehicle_image.url(:thumb)}) 
      end
    end
  end
end
