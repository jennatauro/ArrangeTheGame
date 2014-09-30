class CommentsController < ApplicationController
  def create
    @team = Team.find(params[:team_id])
    @comment = @team.comments.create(comment_params)
    redirect_to team_path(@team)
  end

  def destroy
    @team = Team.find(params[:team_id])
    @comment = @team.comments.find(params[:id])
    @comment.destroy
    redirect_to team_path(@team)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end