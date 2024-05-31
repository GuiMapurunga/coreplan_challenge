class CreateComputers < ActiveRecord::Migration[7.1]
  def change
    create_table :computers do |t|
      t.references :cpus, null: false, foreign_key: true
      t.references :motherboards, null: false, foreign_key: true
      t.references :gpus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
