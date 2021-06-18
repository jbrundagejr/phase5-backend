class RemovePluCodeFromShops < ActiveRecord::Migration[6.1]
  def change
    remove_column :shops, :plus_code, :string
  end
end
