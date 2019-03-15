class SchoolClassesController < ApplicationController
  def new
    @class = SchoolClass.new
  end
  def create
    @class = SchoolClass.new(param)
    @class.save
    redirect_to school_class_path(@class)
  end
  def show
    @class = find
  end
  def edit
    @class = find
  end

  def update
    @class = find
    @class.update(param)
    redirect_to school_class_path(@class)
  end

  private
    def find
      SchoolClass.find(params[:id])
    end
    def param
      params.require(:school_class).permit(:title, :room_number)
    end
end