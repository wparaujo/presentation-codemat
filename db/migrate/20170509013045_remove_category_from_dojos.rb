class RemoveCategoryFromDojos < ActiveRecord::Migration[5.1]
  def change
    remove_column :dojos, :category, :string
  end
end