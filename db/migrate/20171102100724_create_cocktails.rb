class CreateCocktails < ActiveRecord::Migration[5.1]
  def change
    create_table :cocktails do |t|
      t.string :name
      # t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
