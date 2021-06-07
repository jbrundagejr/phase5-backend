class CreateFlavors < ActiveRecord::Migration[6.1]
  def change
    create_table :flavors do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.belongs_to :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
