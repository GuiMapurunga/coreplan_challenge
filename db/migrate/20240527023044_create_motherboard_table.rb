class CreateMotherboardTable < ActiveRecord::Migration[7.1]
  def change
    create_table :motherboards do |t|
      t.string :name
      t.boolean :integrated_graph
      t.boolean :amd_compatibility
      t.boolean :intel_compatibility
      t.integer :max_ram
      t.integer :max_ram_slots
      t.timestamps
    end
  end
end