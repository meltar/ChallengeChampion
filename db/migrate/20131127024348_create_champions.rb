class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.string :name
      t.integer :intelligence
      t.integer :speed
      t.integer :strength

      t.timestamps
    end
  end
end
