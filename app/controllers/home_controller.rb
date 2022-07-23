class HomeController < ApplicationController
  
  #検索機能
  before_action :set_q, only: :page
  
  def page
  end
  
     #検索結果
  def search
    @results = @q.result
  end
  
  private
  
  #検索結果を表示させている
  def set_q
    @q = Event.ransack(params[:q])
  end
end
