class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :porada_id
      t.text :obsah

      t.timestamps
    end
  end
end
