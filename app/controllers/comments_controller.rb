class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]

  # POST /comments
  def create
    @forum = Forum.find(params[:forum_id])
    @comment = @forum.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @comment.forum, notice: 'Comment was successfully created.'
    else
      format.html { render :new }        
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
    redirect_to @comment.forum, notice: 'Comment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:forum_id, :body, :user_id)
    end
end