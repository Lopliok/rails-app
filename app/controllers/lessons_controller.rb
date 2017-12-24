class LessonsController < ApplicationController

  before_action :set_lesson, only: [:show]
  before_action :set_room


  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end


  def show
  end

  private
  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def set_room
    @room = Room.find(params[:room_id])
  end

  def lesson_params
    params.require(:lesson).permit(:start_at, :end_at, :duration)
  end
end
