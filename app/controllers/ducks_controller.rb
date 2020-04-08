class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def new
    @students = Student.all
  end 

  def create 
    @new_duck = Duck.create({name: params[:name], 
                            description: params[:description], 
                            student_id: Student.all.sample.id})
    redirect_to('/ducks')
  end 

  def show
    @duck = Duck.find(params[:id])
    @student = Student.find_by(id: @duck.student_id)
  end 

  def edit
    @ducks = Duck.all
    @duck = Duck.find_by(id: params[:id])
    @students = Student.all
  end 

  def update
    @duck = Duck.find_by(id: params[:id])
    @duck.update({name: params[:name], 
    description: params[:description], 
    student_id: params[:student_id]})
    redirect_to ('/ducks')
  end 


end
