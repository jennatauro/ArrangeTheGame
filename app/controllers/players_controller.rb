class PlayersController < ApplicationController
  def create
    @team = Team.find(params[:team_id])
    @player = @team.players.create(player_params)
    redirect_to team_path(@team)
  end

  def destroy
    @team = Team.find(params[:team_id])
    @player = @team.players.find(params[:id])
    @player.destroy
    redirect_to team_path(@team)
  end
 
  private
    def player_params
      params.require(:player).permit(:name)
    end
end
