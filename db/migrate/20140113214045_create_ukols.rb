class CreateUkols < ActiveRecord::Migration
  def change
    create_table :ukols do |t|
      t.integer :funkce_id
      t.integer :porada_id
      t.boolean :splneno
      t.date :deadline
      t.text :obsah

      t.timestamps
    end
  end
end
