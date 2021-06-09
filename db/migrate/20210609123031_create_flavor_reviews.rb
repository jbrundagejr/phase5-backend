class CreateFlavorReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :flavor_reviews do |t|
      t.string :content
      t.integer :rating
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :flavor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
