class CatsController < ApplicationController

  def index
    @cats = Cat.all

    render :index
  end

  def show
    @cat = Cat.find(params[:id])

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
      flash[:create_failed] = "Failed to create a cat"
      redirect_to cats_url
    end
  end

  def edit
    @cat = Cat.find(params[:id])

    render :edit_cat_form
  end

  def update
    p "IN UPDATE, CAT"
    @cat = Cat.find(params[:id]).update_attributes(params[:cat])
    p @cat

    render :show
  end
end