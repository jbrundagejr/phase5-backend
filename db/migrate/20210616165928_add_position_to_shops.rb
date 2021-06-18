class AddPositionToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :lat, :float
    add_column :shops, :lng, :float
  end
end
