class CoursesController < ApplicationController
  before_action :set_course, only: [:show ]


  def index
    @courses = Course.all
  end


  def show
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title, :code, :study_type, :language)
  end
end
