class CommentsController < ApplicationController
  def new
    @anime = Anime.find(params[:anime_id])
    @comment = @anime.comments.build
  end
  def create
    @anime = Anime.find(params[:anime_id])

    # @anime.comments.build(comment_params)
    @comment = Comment.new(comment_params)
    @comment.anime = @anime
    @comment.user = current_user
    @comment.save
    redirect_to anime_path(@anime)
  end
  def edit
    @anime = Anime.find(params[:anime_id])
    @comment = Comment.find(params[:id])
  end
  def update
    @anime = Anime.find(params[:anime_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to anime_path(@anime)
  end
  def destroy
    @anime = Anime.find(params[:anime_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to anime_path(@anime)
  end
  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
