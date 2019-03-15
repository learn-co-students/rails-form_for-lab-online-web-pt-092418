class StudentsController < ApplicationController
  def new
    @stu = Student.new
  end

  def create
    @stu = Student.new(param)
    @stu.save
    redirect_to student_path(@stu)
  end

  def show
    @stu = find
  end

  def edit
    @stu =find
  end

  def update
    @stu = find
    @stu.update(param)
    redirect_to student_path(@stu)
  end

  private
    def find
      Student.find(params[:id])
    end
    def param
      params.require(:student).permit(:first_name, :last_name)
    end
end