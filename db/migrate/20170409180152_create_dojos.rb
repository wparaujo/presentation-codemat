class CreateDojos < ActiveRecord::Migration[5.1]
  def change
    create_table :dojos do |t|

      t.timestamps
    end
  end
end
