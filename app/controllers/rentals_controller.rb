class RentalsController < ApplicationController
before_action :set_params %i[create update]
before_action :set_rental %i[show edit destroy]


  def index
    @rentals = Rental.all
  end

  def show; end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(set_params)
    @rental.user_id = current_user.id
    if @rental.save?
      redirect_to rentals_show_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @rental.update(set_params)
    if @rental.save?
      redirect_to rentals_show_path
    else
      render :edit
    end
  end

  def destroy
    @rental.delete
    redirect_to rentals_show_path
  end

  private

  def set_params
    params.require(:rental).permit!
  end

  def set_rental
    @rental = rental.find(params[:id])
  end
end
