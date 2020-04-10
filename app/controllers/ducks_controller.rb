class DucksController < ApplicationController

 

  def index
    @ducks = Duck.all
  end

  def new

  end

  def create
    @duck = Duck.create({
      name: params[:name],
      description: params[:description],
      student_id: params[:student_id]
    })
    redirect_to "/ducks"
  end
  
  def show
    @duck = Duck.find(params[:id])
  end

  def edit
    
    @duck = Duck.find(params[:id])
  end

  def update
    @duck = Duck.find(params[:id])
    @duck.update({
      name: params[:name],
      description: params[:description]
    })
    redirect_to "/ducks"
  end

end
