class BuildingsController < ApplicationController
  def index
  end
  def new

  end
  def show

  end

  def create
    @building = Building.new(building_params)

    @building.save
    redirect_to @building
  end

  private
  def building_params
    params.require(:building).permit(:title, :code)
  end

end
