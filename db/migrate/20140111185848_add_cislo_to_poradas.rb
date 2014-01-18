class AddCisloToPoradas < ActiveRecord::Migration
  def change
    add_column :poradas, :cislo, :integer
  end
end
