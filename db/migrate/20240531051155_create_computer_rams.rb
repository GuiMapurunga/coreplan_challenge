class CreateComputerRams < ActiveRecord::Migration[7.1]
  def change
    create_table :computer_rams do |t|
      t.references :computers, null: false, foreign_key: true
      t.references :rams, null: false, foreign_key: true
      t.integer :capacity

      t.timestamps
    end
  end
end