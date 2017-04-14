class CreateDojos < ActiveRecord::Migration[5.1]
  def change
    create_table :dojos do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.string :category
      t.timestamps
    end
  end
end
