class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :adress
      t.integer :phone_number
      t.references :computers, foreign_key: true
      t.timestamps
    end
  end
end
