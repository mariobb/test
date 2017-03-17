class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :formatted_address
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
