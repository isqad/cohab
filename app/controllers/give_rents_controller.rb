class GiveRentsController < ApplicationController

  def index
    @give_rents = GiveRent.ordered
  end

  def show
    @give_rent = GiveRent.find(params[:id])
  end

  def new
    @give_rent = GiveRent.new
  end

  def create
    @give_rent = GiveRent.new(params[:give_rent])

    if @give_rent.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
