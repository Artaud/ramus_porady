class RemoveManazers < ActiveRecord::Migration
  def change
    drop_table :manazers
  end
end
