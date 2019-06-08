class CreateAutocompletes < ActiveRecord::Migration[5.2]
  def change
    create_table :autocompletes do |t|
      t.string :address
      t.integer :street_number
      t.string :locality
      t.string :route
      t.string :administrative_area_level_1
      t.string :country
      t.integer :postal_code

      t.timestamps
    end
  end
end
