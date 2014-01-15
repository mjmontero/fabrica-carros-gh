class CreateCarParts < ActiveRecord::Migration
  def change
    create_table :car_parts do |t|
      t.integer :part_type_id
      t.string :part_model
      t.string :description

      t.timestamps
    end
  end
end
