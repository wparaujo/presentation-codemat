class CreateThemes < ActiveRecord::Migration[5.1]
  def change
    create_table :themes do |t|
    	t.string :name
      	t.string :iconName
      	t.string :themeBackground
      t.timestamps
    end
  end
end
