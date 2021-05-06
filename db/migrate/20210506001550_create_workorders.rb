class CreateWorkorders < ActiveRecord::Migration[6.1]
  def change
    create_table :workorders do |t|
      t.text :body
      t.string :caller
      t.string :technician
      t.datetime :target_date
      t.string :resolution
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
