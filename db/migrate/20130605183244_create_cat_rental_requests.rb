class CreateCatRentalRequests < ActiveRecord::Migration
  def change
    create_table :cat_rental_requests do |t|
      t.integer :cat_id
      t.string :begin_date
      t.string :end_date
      t.string :status

      t.timestamps
    end
  end
end
