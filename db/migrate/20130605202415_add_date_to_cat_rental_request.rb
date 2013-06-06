class AddDateToCatRentalRequest < ActiveRecord::Migration
  def change
    remove_column :cat_rental_requests, :begin_date
    remove_column :cat_rental_requests, :end_date
    add_column :cat_rental_requests, :begin_date, :date
    add_column :cat_rental_requests, :end_date, :date
  end
end
