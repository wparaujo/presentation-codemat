class AddCategorizableToDojos < ActiveRecord::Migration[5.1]
  def change
    add_column :dojos, :categorizable_id, :integer
    add_column :dojos, :categorizable_type, :string
  end
end
