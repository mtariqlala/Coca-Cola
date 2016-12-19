class CreateGets < ActiveRecord::Migration
  def change
    create_table :gets do |t|
      t.references :outlet, index: true
      t.references :delivery, index: true

      t.timestamps null: false
    end
    add_foreign_key :gets, :outlets
    add_foreign_key :gets, :deliveries
  end
end
