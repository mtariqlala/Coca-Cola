class CreateMakes < ActiveRecord::Migration
  def change
    create_table :makes do |t|
      t.references :delivery, index: true
      t.references :lorry, index: true

      t.timestamps null: false
    end
    add_foreign_key :makes, :deliveries
    add_foreign_key :makes, :lorries
  end
end
