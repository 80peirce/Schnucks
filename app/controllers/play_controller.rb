class PlayController < ApplicationController
  def create
   # @playa1= params[:p1]
   # @playa2= params[:p2]
   # @playa3= params[:p3]
   # session[:team1] = SchnucksTeam.new(:owner => @playa1)
   # session[:team2] = SchnucksTeam.new(:owner => @playa2)
   # session[:available_hitters_ids] = Hitter.all.map{|hitter| hitter.id}
   # session[:available_pitchers_ids] = Pitcher.all.map{|pitcher| pitcher.id}

    # Initialize Schucks team ids
    
    Hitter.all.each do |h| 
      h.schnucks_team_id = nil
      h.save
    end
    
    Pitcher.all.each do |p| 
      p.schnucks_team_id = nil
      p.save
    end
    
    
    @team1 = SchnucksTeam.create( owner: params[:p1])
    @team2 = SchnucksTeam.create( owner: params[:p2])
    @todays_game = SchnucksGame.new
    @todays_game.schnucks_teams[0] = @team1
    @todays_game.schnucks_teams[1] = @team2
    @todays_game.save

    session[:todays_game_id] = @todays_game.id
    session[:turn] = 0

    redirect_to play_play_path
  end

  def play
    
    @team_whose_turn_it_is = SchnucksTeam.find_all_by_schnucks_game_id(session[:todays_game_id])[session[:turn]]
    @picking_team = @team_whose_turn_it_is.owner
    
    #@hitters = Hitter.find_all_by_id(session[:available_hitters_ids])
    @hitters_available = Hitter.find_all_by_schnucks_team_id(nil)
    @hitters_team1 = Hitter.find_all_by_schnucks_team_id(0)
    @hitters_team2 = Hitter.find_all_by_schnucks_team_id(1)
    
    @pitchers_available = Pitcher.find_all_by_schnucks_team_id(nil)
    @pitchers_team1 = Pitcher.find_all_by_schnucks_team_id(0)
    @pitchers_team2 = Pitcher.find_all_by_schnucks_team_id(1)
    
    
    @team_name1 = SchnucksGame.find(session[:todays_game_id]).schnucks_teams[0].owner
    @team_name2 = SchnucksGame.find(session[:todays_game_id]).schnucks_teams[1].owner
  end
  
  def add
    #take from available
    #add to team
    #session[:team1].hitters.push Hitter.find((params[:hitter_id]))
    if params[:hitter_id] != '666'
      @hitter = Hitter.find((params[:hitter_id]))
      @hitter.schnucks_team_id = session[:turn]
      @hitter.save
    else
      @pitcher = Pitcher.find((params[:pitcher_id]))
      @pitcher.schnucks_team_id = session[:turn]
      @pitcher.save
    end
    
    if session[:turn] == 0
      session[:turn] = 1
    else 
      session[:turn] = 0
    end
    
    redirect_to play_play_path
  end
  
  def score
    
    def schnucks_score_higher(total1, total2)
      if (total1 * 10000).to_i >  (total2 * 10000).to_i
        [2,1]
      elsif (total1 * 10000).to_i < (total2 * 10000).to_i  
        [1,2]
      else
        [1.5,1.5]
      end
    end
    
    def schnucks_score_lower(total1, total2)
      if (total1 * 10000).to_i <  (total2 * 10000).to_i
        [2,1]
      elsif (total1 * 10000).to_i > (total2 * 10000).to_i
        [1,2]
      else
        [1.5,1.5]
      end
    end
    
    
    @team1 = SchnucksGame.find(session[:todays_game_id]).schnucks_teams[0]
    @team2 = SchnucksGame.find(session[:todays_game_id]).schnucks_teams[1]
        
    
    @team1.hitters = Hitter.find_all_by_schnucks_team_id(0)
    @team2.hitters = Hitter.find_all_by_schnucks_team_id(1)
    
    @team1.pitchers = Pitcher.find_all_by_schnucks_team_id(0) 
    @team2.pitchers = Pitcher.find_all_by_schnucks_team_id(1)

  #Score the game

  #initialize scores    
    @team1.game_score = 0
    @team2.game_score = 0
    
    @team1_ab = 0
    @team1_hits = 0
    @team1_runs = 0
    @team1_hr = 0
    @team1_rbi = 0
    @team1_sb = 0
    
    @team1.hitters.each do |h|
      @team1_ab += h.atbats
      @team1_hits += h.hits 
      @team1_runs += h.runs
      @team1_hr += h.home_runs
      @team1_rbi += h.rbi
      @team1_sb += h.stolen_bases
    end
    
    @team1_ba = @team1_hits.to_f / @team1_ab.to_f
    
    @team1_ip = 0.0
    @team1_er = 0
    @team1_hits_allowed = 0
    @team1_bb = 0
    @team1_k = 0
    @team1_wins = 0
    @team1_losses = 0
    @team1_saves = 0
    
    

    @team1.pitchers.each do |p|
      @team1_ip += p.innings_pitched.to_f
      @team1_er += p.earned_runs.to_i
      @team1_hits_allowed += p.hits.to_i
      @team1_bb += p.walks.to_i
      @team1_k += p.strikeouts.to_i
      @team1_wins += p.wins.to_i
      @team1_losses += p.losses.to_i
      @team1_saves += p.saves.to_i
    end
    
    
    @team1_era = (@team1_er.to_f / @team1_ip) * 9.to_f
    @team1_whip = (@team1_bb.to_f + @team1_hits_allowed.to_f)/ @team1_ip.to_f

    
    @team2_ab = 0
    @team2_hits = 0
    @team2_runs = 0
    @team2_hr = 0
    @team2_rbi = 0
    @team2_sb = 0
    
    @team2.hitters.each do |h|
      @team2_ab += h.atbats
      @team2_hits += h.hits 
      @team2_runs += h.runs
      @team2_hr += h.home_runs
      @team2_rbi += h.rbi
      @team2_sb += h.stolen_bases
    end
    
    @team2_ba = @team2_hits.to_f / @team2_ab.to_f
  
   
    @team2_ip = 0
    @team2_er = 0
    @team2_hits_allowed = 0
    @team2_bb = 0
    @team2_k = 0
    @team2_wins = 0
    @team2_losses = 0
    @team2_saves = 0
    
    @team2.pitchers.each do |p|
      @team2_ip += p.innings_pitched.to_f
      @team2_er += p.earned_runs.to_i
      @team2_hits_allowed += p.hits.to_i
      @team2_bb += p.walks.to_i
      @team2_k += p.strikeouts.to_i
      @team2_wins += p.wins.to_i
      @team2_losses += p.losses.to_i
      @team2_saves += p.saves.to_i
    end
    
    @team2_era = (@team2_er.to_f / @team2_ip) * 9.to_f
    @team2_whip = (@team2_bb.to_f + @team2_hits_allowed.to_f)/ @team2_ip.to_f

  
  @team1.game_score += schnucks_score_higher(@team1_hits,@team2_hits)[0]
  @team2.game_score += schnucks_score_higher(@team1_hits,@team2_hits)[1]
  @team1.game_score += schnucks_score_higher(@team1_runs,@team2_runs)[0]
  @team2.game_score += schnucks_score_higher(@team1_runs,@team2_runs)[1]
  @team1.game_score += schnucks_score_higher(@team1_hr,@team2_hr)[0]
  @team2.game_score += schnucks_score_higher(@team1_hr,@team2_hr)[1]
  @team1.game_score += schnucks_score_higher(@team1_rbi,@team2_rbi)[0]
  @team2.game_score += schnucks_score_higher(@team1_rbi,@team2_rbi)[1]
  @team1.game_score += schnucks_score_higher(@team1_sb,@team2_sb)[0]
  @team2.game_score += schnucks_score_higher(@team1_sb,@team2_sb)[1]
  @team1.game_score += schnucks_score_higher(@team1_wins,@team2_wins)[0]
  @team2.game_score += schnucks_score_higher(@team1_wins,@team2_wins)[1]
  @team1.game_score += schnucks_score_higher(@team1_k,@team2_k)[0]
  @team2.game_score += schnucks_score_higher(@team1_k,@team2_k)[1]
  @team1.game_score += schnucks_score_higher(@team1_saves,@team2_saves)[0]
  @team2.game_score += schnucks_score_higher(@team1_saves,@team2_saves)[1]

  @team1.game_score += schnucks_score_lower(@team1_era,@team2_era)[0]
  @team2.game_score += schnucks_score_lower(@team1_era,@team2_era)[1]
  @team1.game_score += schnucks_score_lower(@team1_whip,@team2_whip)[0]
  @team2.game_score += schnucks_score_lower(@team1_whip,@team2_whip)[1]
  end
end