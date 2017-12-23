class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def show
    @building = Building.find(params[:id])
  end

  def new
    @building = Building.new
  end

  def edit
    @building = Building.find(params[:id])
  end

  def create
    @building = Building.new(building_params)

    if @building.save
      redirect_to @building
    else
      render 'new'
    end

  end

  def update
    @building = Building.find(params[:id])

    if @building.update(building_params)
      redirect_to @building
    else
      render 'edit'
    end
  end

  private
  def building_params
    params.require(:building).permit(:title, :code)
  end

end
