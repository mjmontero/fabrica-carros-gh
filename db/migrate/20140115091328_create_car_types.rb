class CreateCarTypes < ActiveRecord::Migration
  def change
    create_table :car_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    
  CarType.new(:name => 'Automovil', :description => '').save
  CarType.new(:name => 'Bus', :description => '').save
  CarType.new(:name => '4x4', :description => '').save
  
  end
end
