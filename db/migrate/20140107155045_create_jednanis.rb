class CreateJednanis < ActiveRecord::Migration
  def change
    create_table :jednanis do |t|
      t.string :porada_id
      t.string :tema
      t.text :popis
      t.boolean :je_ukol

      t.timestamps
    end
  end
end
