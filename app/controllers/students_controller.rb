class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.new(student_hash)
    if student.save
      redirect_to student_path(student)
    else
      redirect_to new_student_path(student)
    end
  end

  private

  def student_hash
    hash_student = params.require(:student).permit(:first_name, :last_name)
  end

end
