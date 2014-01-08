class CreatePoradas < ActiveRecord::Migration
  def change
    create_table :poradas do |t|
      t.date :datum

      t.timestamps
    end
  end
end
