class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @ducks = Duck.where(student_id: @student.id)
  end

  def new
  end

  # need to check if name is blank and mod is between 1 & 5
  def create
    @student = Student.create(name: params[:name], mod: params[:mod])

    redirect_to "/students/#{@student.id}"
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(name: params[:name], mod: params[:mod])

    redirect_to "/students/#{@student.id}"
  end
end
