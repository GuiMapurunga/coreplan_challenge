class CreateGpus < ActiveRecord::Migration[7.1]
  def change
    create_table :gpus do |t|
      t.string :name

      t.timestamps
    end
  end
end
