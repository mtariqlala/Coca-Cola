class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :manager_name
      t.string :contact_no
      t.float :salary
      t.string :address

      t.timestamps null: false
    end
  end
end
