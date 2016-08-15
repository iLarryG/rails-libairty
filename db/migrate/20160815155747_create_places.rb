class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :kind
      t.text :description
      t.references :user, foreign_key: true
      t.integer :day_price
      t.integer :night_price

      t.timestamps
    end
  end
end
