class CatsController < ApplicationController

  def index
    @cats = Cat.all
    @cat_rental_requests = CatRentalRequest.all.sort_by { |request| request.begin_date }
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    @cat_rental_requests = @cat.cat_rental_requests.sort_by { |request| request.begin_date }
    render :show
  end

  def new
    render :new_cat_form
  end

  def create
    cat = Cat.new(params[:cat])
    if cat.save
      redirect_to cats_url
    else
      flash[:notice] = "Failed to create a cat"
      redirect_to cats_url
    end
  end

  def edit
    @cat = Cat.find(params[:id])

    render :edit_cat_form
  end

  def update
    @cat = Cat.find(params[:id]).update_attributes(params[:cat])

    redirect_to cat_url
  end

  def destroy
    cat = Cat.find(params[:id])
    if cat.destroy
      flash[:notice] = "Cat destroyed successfully"
      redirect_to cats_url
    else
      flash[:notice] = "Failed to delete cat"
      redirect_to cats_url
    end
  end
end