class LikesController < ApplicationController
  before_action :like_params
  
  def create
    Like.create(user_id: current_user.id, event_id: params[:id])
  end
  
  def destroy
    Like.find_by(user_id: current_user.id, event_id: params[:id]).destroy
  end
  
  private
  
  def like_params
    @event = Event.find(params[:id])
  end
end
