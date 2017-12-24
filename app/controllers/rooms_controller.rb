class RoomsController < ApplicationController

  before_action :set_building
  before_action :set_room, only: [:show ]

  def create
    @building = Building.find(params[:building_id])
    @room = @building.rooms.create(room_params)
    redirect_to building_path(@building)
  end

  def new
    @room = Room.new(building_id: @building.id)
  end

  def show

  end


  def destroy
    @building = Building.find(params[:building_id])
    @room = @building.rooms.find(params[:id])
    @room.destroy
    redirect_to building_path(@building)
  end



  private
  def set_building
    @building = Building.find(params[:building_id])
  end

  def set_room
    @room = Room.find(params[:id])
  end



  def room_params
    params.require(:room).permit(:title, :code, :building_id)
  end
end


