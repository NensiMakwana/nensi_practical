class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :color
      t.string :company_name

      t.timestamps
    end
  end
end
