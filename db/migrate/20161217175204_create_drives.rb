class CreateDrives < ActiveRecord::Migration
  def change
    create_table :drives do |t|
      t.date :date_of
      t.references :lorry, index: true
      t.references :driver, index: true

      t.timestamps null: false
    end
    add_foreign_key :drives, :lorries
    add_foreign_key :drives, :drivers
  end
end
