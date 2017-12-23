class LessonsController < ApplicationController

  before_action :set_building

  def create
    @building = Building.find(params[:building_id])
    @room = @building.rooms.create(room_params)
    redirect_to building_path(@building)
  end

  def new
    puts params
    @room = Room.new(building_id: @building.id)
  end


  def destroy
    @building = Building.find(params[:building_id])
    @room = @building.rooms.find(params[:id])
    @room.destroy
    redirect_to building_path(@building)
  end



  private


  private
  def set_building
    @building = Building.find(params[:building_id])
  end



  def room_params
    params.require(:room).permit(:title, :code, :building_id)
  end
end
