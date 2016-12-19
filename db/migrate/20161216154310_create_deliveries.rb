class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.date :delivery_date
      t.integer :distance_covered

      t.timestamps null: false
    end
  end
end
