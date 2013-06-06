class AddCatRentalRequests < ActiveRecord::Migration
  def change
    create_table :cat_rental_requests do |t|
      t.integer :cat_id
      t.string :status
      t.date :begin_date
      t.date :end_date

    end
  end
end
