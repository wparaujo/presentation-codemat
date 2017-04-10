class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :country
      t.string :address
      t.integer :number
      t.string :complement

      t.timestamps
    end
  end
end
