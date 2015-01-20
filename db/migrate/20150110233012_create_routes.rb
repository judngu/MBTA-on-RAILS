class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :train_id, null: false
      t.string :name, null:false
      t.integer :number, null:false
      t.string :direction, null:false

      t.timestamps
    end
  end
end
