class RoomsController < ApplicationController


  def create
    @building = Building.find(params[:building_id])
    @room = @building.rooms.create(room_params)
    redirect_to buildings_path(@building)
  end

  def destroy
    @building = Building.find(params[:building_id])
    @room = @building.rooms.find(params[:id])
    @room.destroy
    redirect_to buildings_path(@building)
  end



  private

  def room_params
    params.require(:room).permit(:title, :code, :building_id)
  end
end
