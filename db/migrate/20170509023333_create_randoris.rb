class CreateRandoris < ActiveRecord::Migration[5.1]
  def change
    create_table :randoris do |t|

      t.timestamps
    end
  end
end
