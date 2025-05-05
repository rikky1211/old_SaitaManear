class AddAddressToSpots < ActiveRecord::Migration[7.2]
  def change
    add_reference :spots, :town, null:false, foreign_key: true
    add_column :spots, :address_below, :string
  end
end
