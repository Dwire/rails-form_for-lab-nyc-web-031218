class StudentsController < ApplicationController

  # def index
  #   @students = Student.all
  # end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params[:student])

    # redirect_to student_path(@student)
    redirect_to @student
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params[:student])

    # redirect_to student_path(@student)
    redirect_to @student
  end

end
