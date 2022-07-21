class ResovesionsController < ApplicationController
  def index
    @events = Event.all
    @resovesions = Resovesion.all
  end

  def new
  end

  def create
    @resovesion = Resovesion.new(resovesion_params.merge(user_id: current_user.id))
    if @resovesion.save
      flash[:notice] = "予約をしました"
      redirect_to resovesions_path
    else
      flash[:notice] = "予約できませんでした"
      redirect_to event_path(@resovesion.event.id)
    end
  end

  def show
    @resovesion = Resovesion.find(params[:id])
  end

  def edit
    @resovesion = Resovesion.find(params[:id])
  end

  def update
    @resovesion = Resovesion.find(params[:id])
    if @resovesion.update(resovesion_params.merge(user_id: current_user.id))
      flash[:notice] = "予約を更新しました"
      redirect_to resovesion_path
    else
      flash[:notice] = "予約の更新ができませんでした"
      render "edit"
    end
  end

  def destroy
  end

  def resovesion_params
    params.require(:resovesion).permit(:people, :day, :event_id)
  end
end
