class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :car_type_id
      t.string :car_model
      t.string :description
      
      t.timestamps
    end
  end
end
