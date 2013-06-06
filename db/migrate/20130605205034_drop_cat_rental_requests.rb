class DropCatRentalRequests < ActiveRecord::Migration
  def change
    drop_table :cat_rental_requests
  end
end
