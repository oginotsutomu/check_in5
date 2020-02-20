class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text   :recipe, null: false
      t.string :video
      t.string :image
      t.timestamps
    end
  end
end
