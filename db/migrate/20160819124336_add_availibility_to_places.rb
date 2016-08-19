class AddAvailibilityToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :availibility, :date
  end
end
