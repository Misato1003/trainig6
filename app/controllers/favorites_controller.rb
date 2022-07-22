class FavoritesController < ApplicationController
  def create
    Favorite.create(user_id: current_user.id, event_id: params[:id])
    redirect_to events_path
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, event_id: params[:id])
    favorite.destroy
    redirect_to events_path
  end
end
