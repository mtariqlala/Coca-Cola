class CreateOutlets < ActiveRecord::Migration
  def change
    create_table :outlets do |t|
      t.string :outlet_Name
      t.string :location
      t.references :manager, index: true

      t.timestamps null: false
    end
    add_foreign_key :outlets, :managers
  end
end
