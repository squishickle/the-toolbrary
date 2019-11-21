class ToolsController < ApplicationController
  before_action :set_params, only: %i[create update]
  before_action :set_tool, only: %i[show edit destroy]

  def index
    if params[:query].present?
      @tools = Tool.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @tools = Tool.all
    end
  end

  def show
    @rental = Rental.new
    @markers = {
      lat: @tool.user.latitude,
      lng: @tool.user.longitude
    }
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(set_params)
    @tool.user = current_user
    if @tool.save
      redirect_to tool_path(@tool)
    else
      render :new
    end
  end

  def edit; end

  def update
    @tool.update(set_params)
    if @tool.save
      redirect_to tool_path(@tool)
    else
      render :edit
    end
  end

  def destroy
    @tool.destroy
    redirect_to tools_path
  end

  private

  def set_params
    params.require(:tool).permit!
  end

  def set_tool
    @tool = Tool.find(params[:id])
  end
end
