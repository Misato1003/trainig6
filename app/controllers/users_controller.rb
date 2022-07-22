class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @events = @user.events

    favarites = Favorite.where(user_id: current_user.id).pluck(:event_id)
    @favarite_list = Event.find(favarites)
  end
end
