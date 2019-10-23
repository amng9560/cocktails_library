class CreateDrinkTable < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :instructions
    end
  end
end
