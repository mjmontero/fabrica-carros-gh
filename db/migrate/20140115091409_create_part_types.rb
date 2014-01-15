class CreatePartTypes < ActiveRecord::Migration
  def change
    create_table :part_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end

  PartType.new(:name => 'Llanta', :description => '').save
  PartType.new(:name => 'Motor', :description => '').save
  PartType.new(:name => 'Carroceria', :description => '').save

  end
end
