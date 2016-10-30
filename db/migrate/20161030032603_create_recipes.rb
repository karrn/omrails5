class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :directions
      t.text :ingredients
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
