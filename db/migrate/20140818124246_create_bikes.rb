class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :brand
      t.string :category
      t.string :condition
      t.string :size

      t.string :title
      t.integer :price
      t.string :description
      t.string :localisation
      t.references :user, index: true
      t.timestamps
    end
  end
end
