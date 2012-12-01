class PlayController < ApplicationController
  def create
    @playa1= params[:p1]
    @playa2= params[:p2]
    @playa3= params[:p3]
    session[:team1] = SchnucksTeam.new(:owner => @playa1)
    session[:team2] = SchnucksTeam.new(:owner => @playa2)
    session[:available_hitters_ids] = Hitter.all.map{|hitter| hitter.id}
    session[:available_pitchers_ids] = Pitcher.all.map{|pitcher| pitcher.id}

    redirect_to play_play_path
  end

  def play   
    @hitters = Hitter.find_all_by_id(session[:available_hitters_ids])
  end
  
  def add
    #take from available
    #add to team
    session[:team1].hitters.push Hitter.find((params[:hitter_id]))
    
    
    redirect_to play_play_path
  end
end