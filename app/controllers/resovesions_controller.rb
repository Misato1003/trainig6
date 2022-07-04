class ResovesionsController < ApplicationController
  def index
    @events = Event.all
    @resovesions = Resovesion.all
  end
  
  def new
    @resovesion = Resovesion.new
  end

  def create
  end
  
  def show
    @resovesion = Resovesion.find(params[:id])
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
end
