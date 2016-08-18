class AddZipCodeToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :zip_code, :string
  end
end
