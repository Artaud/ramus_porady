class CreateUkols < ActiveRecord::Migration
  def change
    create_table :ukols do |t|
      t.integer :jednani_id
      t.text :popis
      t.boolean :splnen
      t.date :deadline

      t.timestamps
    end
  end
end
