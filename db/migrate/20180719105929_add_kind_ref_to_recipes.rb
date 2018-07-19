class AddKindRefToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_reference :recipes, :kind, foreign_key: true
  end
end
