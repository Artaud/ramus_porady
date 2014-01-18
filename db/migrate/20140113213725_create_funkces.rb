class CreateFunkces < ActiveRecord::Migration
  def change
    create_table :funkces do |t|
      t.string :jmeno
      t.string :prijmeni
      t.string :nazev_funkce

      t.timestamps
    end
  end
end
