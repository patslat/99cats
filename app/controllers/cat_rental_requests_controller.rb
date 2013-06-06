class CatRentalRequestsController < ApplicationController
  def new
    render :new_cat_rental_request_form
  end

  def create
    cat_id = Cat.find_by_name(params[:rental][:name]).id
    new_request = CatRentalRequest.new(
      begin_date: params[:rental][:begin_date],
      end_date: params[:rental][:end_date],
      cat_id: cat_id,
      status: "unapproved"
    )
    if new_request.save
      redirect_to cats_url
    else
      flash[:notice] = "Failed to make rental."
      redirect_to cats_url
    end
  end

  def approve
    # TODO redirect_to cats_url unless authenticate_user
    CatRentalRequest.find(params[:request_id]).approve
    flash[:notice] = "Request Approved"
    redirect_to cat_url
  end

  def deny
    CatRentalRequest.find(params[:request_id]).deny
    flash[:notice] = "Request Denied"
    redirect_to cat_url
  end



end
