class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title
      t.datetime :date
      t.string :description
      t.integer :price
      t.boolean :disponibility
      t.references :User, index: true
      t.references :Bike, index: true

      t.timestamps
    end
  end
end
