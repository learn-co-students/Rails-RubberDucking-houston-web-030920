class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def create
    @student = Student.create({
      name: params[:name],
      mod: params[:mod]
    })
    redirect_to"/students"
  end

  def show
    @student = Student.find(params[:id])
    @ducks = @student.ducks
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update({
      name: params[:name],
      mod: params[:mod]
    })
    redirect_to"/students"
  end



  

  


end
