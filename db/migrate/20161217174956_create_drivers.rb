class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :contact_no
      t.decimal :salary
      t.string :address

      t.timestamps null: false
    end
  end
end
