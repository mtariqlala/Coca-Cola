class CreateLorries < ActiveRecord::Migration
  def change
    create_table :lorries do |t|
      t.string :Lorry_no
      t.string :made_in
      t.date :date_of_manufacturer

      t.timestamps null: false
    end
  end
end
