class PlayController < ApplicationController
  def create
   # @playa1= params[:p1]
   # @playa2= params[:p2]
   # @playa3= params[:p3]
   # session[:team1] = SchnucksTeam.new(:owner => @playa1)
   # session[:team2] = SchnucksTeam.new(:owner => @playa2)
   # session[:available_hitters_ids] = Hitter.all.map{|hitter| hitter.id}
   # session[:available_pitchers_ids] = Pitcher.all.map{|pitcher| pitcher.id}

    @team1 = SchnucksTeam.create( owner: params[:p1])
    @team2 = SchnucksTeam.create( owner: params[:p2])
    @todays_game = SchnucksGame.new
    @todays_game.schnucks_teams[0] = @team1
    @todays_game.schnucks_teams[1] = @team2
    @todays_game.save

    session[:todays_game_id] = @todays_game.id
    session[:turn] = 1

    redirect_to play_play_path
  end

  def play   
    #@hitters = Hitter.find_all_by_id(session[:available_hitters_ids])
    @hitters_available = Hitter.find_all_by_schnucks_team_id(nil)
    @hitters_team1 = Hitter.find_all_by_schnucks_team_id(1)
    @hitters_team2 = Hitter.find_all_by_schnucks_team_id(2)
    
    
    @team_name1 = SchnucksGame.find(session[:todays_game_id]).schnucks_teams[0].owner
    @team_name2 = SchnucksGame.find(session[:todays_game_id]).schnucks_teams[1].owner
  end
  
  def add
    #take from available
    #add to team
    #session[:team1].hitters.push Hitter.find((params[:hitter_id]))
    @hitter = Hitter.find((params[:hitter_id]))
    @hitter.schnucks_team_id = session[:turn]
    @hitter.save
    
    if session[:turn] == 1
      session[:turn] = 2
    else 
      session[:turn] = 1
    end
    
    redirect_to play_play_path
  end
end