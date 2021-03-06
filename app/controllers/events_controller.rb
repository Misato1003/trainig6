class EventsController < ApplicationController
  # 検索機能
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :set_q, only: [:index, :search]

  def index
    @events = Event.all
    @events = @q.result
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params.merge(user_id: current_user.id))
    if @event.save
      flash[:notice] = "新規イベント登録しました"
      redirect_to "/events"
    else
      flash[:notice] = "新規イベントに登録できませんでした"
      render "new"
    end
  end

  def show
    @event = Event.find(params[:id])
    @post = Post.new
    @posts = Post.where(event_id: @event.id)
    @resovesion = Resovesion.new
    @resovesions = Resovesion.where(event_id: @event.id)
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params.merge(user_id: current_user.id))
      flash[:notice] = "イベントの情報を更新しました"
      redirect_to event_path
    else
      flash[:notice] = "イベントの情報を更新できませんでした"
      render "edit"
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "イベントを削除しました"
    redirect_to events_path
  end

  def event_params
    params.require(:event).permit(:eventname, :first_day, :last_day, :place, :content, :eventimage, :eventtype, :video)
  end

  # 検索結果
  def search
    @results = @q.result
  end

  private

  # 検索結果を表示させている
  def set_q
    @q = Event.ransack(params[:q])
  end

  def set_event
    @evnet = Event.find(params[:id])
  end
end
