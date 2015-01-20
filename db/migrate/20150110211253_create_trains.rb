class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.string :name, null:false

      t.timestamps
    end
  end
end
