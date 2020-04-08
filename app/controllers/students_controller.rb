class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show 
    @student = Student.find(params[:id])
    @students = Student.all
    @ducks = Duck.all
  end 

  def new
  end 

  def create 
    if params[:name] == '' 
      puts "Please enter a name, wise guy"
    else
      @student = Student.create({name: params[:name],
      mod: params[:mod]})
      redirect_to ('/students')
    end 
  end 

  def edit
    @students = Student.all
    @student = Student.find_by(id: params[:id])
    @ducks = Duck.all
  end 

  def update
    @student = Student.find_by(id: params[:id])
    @student.update({name: params[:name], 
    mod: params[:mod],}) 
    redirect_to ('/students')
  end



end
