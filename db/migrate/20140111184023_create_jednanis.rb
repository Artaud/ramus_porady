class CreateJednanis < ActiveRecord::Migration
  def change
    create_table :jednanis do |t|
      t.integer :porada_id
      t.string :tema
      t.text :obsah

      t.timestamps
    end
  end
end
