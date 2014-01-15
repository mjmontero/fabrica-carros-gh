class CreatePartsByCars < ActiveRecord::Migration
  def change
    create_table :parts_by_cars do |t|
      t.integer :car_id
      t.integer :car_part_id

      t.timestamps
    end
  end
end
