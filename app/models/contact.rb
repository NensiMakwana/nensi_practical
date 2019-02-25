class Contact < ApplicationRecord
  has_many :phones

  rails_admin do
    list do
      field :name
      field :address
      field :email
      field :phones
    end
  end
end
