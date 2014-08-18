class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :description
      t.integer :rating
      t.references :Offer, index: true

      t.timestamps
    end
  end
end
