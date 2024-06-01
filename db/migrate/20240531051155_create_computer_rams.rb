class CreateComputerRams < ActiveRecord::Migration[7.1]
  def change
    create_table :computer_rams do |t|
      t.references :computer, null: false, foreign_key: true
      t.references :ram, null: false, foreign_key: true

      t.timestamps
    end
  end
end