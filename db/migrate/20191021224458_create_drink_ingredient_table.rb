class CreateDrinkIngredientTable < ActiveRecord::Migration[6.0]
  def change
    create_table :drink_ingredients do |t|
      t.references :drink, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.string :quantity
    end
  end
end
