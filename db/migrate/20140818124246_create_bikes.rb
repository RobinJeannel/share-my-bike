class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :brand
      t.string :type
      t.string :condition
      t.string :size

      t.timestamps
    end
  end
end
