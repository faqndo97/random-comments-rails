class CommentsController < ApplicationController
  def index
    @comments = Comment.all.limit(100)
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params.merge!(name: SuperHero.random))

    if @comment.save
      redirect_to comments_path, notice: 'Comment was successfully created.'
    else
      redirect_to comments_path
    end
  end

  def update
    comment = Comment.find(params[:id]) 
    if comment.update(likes: (comment.likes + 1))
      head :ok
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
