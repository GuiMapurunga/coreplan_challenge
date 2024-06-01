class CreateComputers < ActiveRecord::Migration[7.1]
  def change
    create_table :computers do |t|
      t.references :cpu, null: false, foreign_key: true
      t.references :motherboard, null: false, foreign_key: true
      t.references :gpu, null: true, foreign_key: true
      t.references :client, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
