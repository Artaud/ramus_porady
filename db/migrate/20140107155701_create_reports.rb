class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :porada_id
      t.string :funkce
      t.text :popis

      t.timestamps
    end
  end
end
