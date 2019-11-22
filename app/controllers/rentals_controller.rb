class RentalsController < ApplicationController
  before_action :set_params, only: %i[create update]
  before_action :set_rental, only: %i[show edit destroy]

  def index
    @borrowing = Rental.all.select { |rental| rental.user == current_user }
    @lending = Rental.all.select { |r| r.tool.user == current_user  }

  end

  def show; end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(set_params)
    @rental.user_id = current_user.id
    @rental.tool_id = params["tool_id"].to_i
    @rental.total_price = (@rental.end_date - @rental.start_date) * @rental.tool.price
    if @rental.save
      redirect_to rentals_path
    else
      @tool = @rental.tool
      render "tools/show"
    end
  end

  def edit; end

  def update
    @rental.update(set_params)
    if @rental.save
      redirect_to rentals_path
    else
      render :edit
    end
  end

  def destroy
    @rental.delete
    redirect_to rentals_path
  end

  private

  def set_params
    params.require(:rental).permit!
  end

  def set_rental
    @rental = rental.find(params[:id])
  end
end
