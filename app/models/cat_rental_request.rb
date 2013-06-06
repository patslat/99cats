class CatRentalRequest < ActiveRecord::Base
  attr_accessible :cat_id, :begin_date, :end_date, :status
  belongs_to :cat
  before_create :validate_date

  def approve
    update_attributes(status: "approved")
    CatRentalRequest.where(cat_id: cat_id, status:"pending").each do |request|
      request.deny if overlap?(request)
    end
  end

  def deny
    update_attributes(status: "denied")
  end

#  private
  def validate_date
    unless no_overlap?
      errors[:begin_date] << "Cat being rented at that time."
    end
  end

  def no_overlap?
    approved_rentals = CatRentalRequest.where(status: "approved", cat_id: cat_id)
    approved_rentals.none? do |rental|
      overlap?(rental)
    end
  end

  def overlap?(rental)
    (rental.begin_date..rental.end_date).include?(begin_date) ||
    (rental.begin_date..rental.end_date).include?(end_date) ||
    (begin_date..end_date).include?(rental.begin_date) ||
    (begin_date..end_date).include?(rental.end_date)
  end
end
