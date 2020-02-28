class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.references :neighbour, foreign_key: true
      t.string :title
      t.text :description
      t.date :from
      t.date :to
      t.integer :price
      t.integer :deposit
      t.text :delivery
      t.integer :condition
      t.integer :rental_period

      t.timestamps
    end
  end
end
