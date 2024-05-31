class CreateRams < ActiveRecord::Migration[7.1]
  def change
    create_table :rams do |t|
      t.string :name
      t.integer :capacity

      t.timestamps
    end
  end
end
