class PostsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @post = Post.new(post_params.merge(user_id: current_user.id))
    if @post.save
      flash[:notice] = "新規投稿しました"
      redirect_to event_path(@post.event.id)
    else
      flash[:notice] = "新規登録できませんでした"
      redirect_to event_path(@post.event.id)
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params.merge(user_id: current_user.id))
      flash[:notice] = "投稿を更新しました"
      redirect_to event_path(@post.event.id)
    else
      flash[:notice] = "投稿を更新できませんでした"
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to event_path(@post.event.id)
  end

  def post_params
    params.require(:post).permit(:impressions, :nickname, :event_id)
  end
end
