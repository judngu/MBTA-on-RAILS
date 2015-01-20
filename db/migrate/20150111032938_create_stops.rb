class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :train_id, null: false
      t.string :name, null: false
      t.string :parent_station, null: false

      t.timestamps
    end
  end
end
