class ScoreController < ApplicationController
  
  caches_page :results
  
  
  def manual
    @users = User.all
    @user_table = User
  end
  
  def results 
  ## calculate player1 totals
  
    def total_things (*a)
      sum = 0
      a.each { |h| sum += h.to_i}
      sum
    end
  
  
  
  @schnucker1 = params[:p1]
  
  @schnucker1_hits_total = total_things(params[:c1_h],params[:firstb1_h],params[:secondb1_h],params[:thirdb1_h],params[:ss1_h],
  params[:of1_1_h],params[:of2_1_h],params[:of3_1_h],params[:ut1_h])
  
  @schnucker1_ab_total = total_things(params[:c1_ab],params[:firstb1_ab],params[:secondb1_ab],params[:thirdb1_ab],params[:ss1_ab],
  params[:of1_1_ab],params[:of2_1_ab],params[:of3_1_ab],params[:ut1_ab])
  
  @schnucker1_ba = @schnucker1_hits_total.to_f / @schnucker1_ab_total.to_f
  
  @schnucker1_runs_total = total_things(params[:c1_r],params[:firstb1_r],params[:secondb1_r],params[:thirdb1_r],params[:ss1_r],
  params[:of1_1_r],params[:of2_1_r],params[:of3_1_r],params[:ut1_r])
  
  @schnucker1_hr_total = total_things(params[:c1_hr],params[:firstb1_hr],params[:secondb1_hr],params[:thirdb1_hr],params[:ss1_hr],
  params[:of1_1_hr],params[:of2_1_hr],params[:of3_1_hr],params[:ut1_hr])
  
  @schnucker1_rbi_total = total_things(params[:c1_rbi],params[:firstb1_rbi],params[:secondb1_rbi],params[:thirdb1_rbi],params[:ss1_rbi],
  params[:of1_1_rbi],params[:of2_1_rbi],params[:of3_1_rbi],params[:ut1_rbi])
  
  @schnucker1_sb_total = total_things(params[:c1_sb],params[:firstb1_sb],params[:secondb1_sb],params[:thirdb1_sb],params[:ss1_sb],
  params[:of1_1_sb],params[:of2_1_sb],params[:of3_1_sb],params[:ut1_sb])
  
  
  @schnucker1_ip_total = params[:pp1_1_ip].to_i + params[:pp2_1_ip].to_i + params[:pp3_1_ip].to_i + params[:pp4_1_ip].to_i
  @schnucker1_er_total = params[:pp1_1_er].to_i + params[:pp2_1_er].to_i + params[:pp3_1_er].to_i + params[:pp4_1_er].to_i
  @schnucker1_h_total = params[:pp1_1_h].to_i + params[:pp2_1_h].to_i + params[:pp3_1_h].to_i + params[:pp4_1_h].to_i 
  @schnucker1_bb_total = params[:pp1_1_bb].to_i + params[:pp2_1_bb].to_i + params[:pp3_1_bb].to_i +  params[:pp4_1_bb].to_i
  @schnucker1_wh_total = @schnucker1_h_total + @schnucker1_bb_total
  
  
  @schnucker1_k_total = params[:pp1_1_k].to_i + params[:pp2_1_k].to_i + params[:pp3_1_k].to_i + params[:pp4_1_k].to_i
  @schnucker1_w_total = params[:pp1_1_w].to_i + params[:pp2_1_w].to_i + params[:pp3_1_w].to_i + params[:pp4_1_w].to_i
  @schnucker1_l_total = params[:pp1_1_l].to_i + params[:pp2_1_l].to_i + params[:pp3_1_l].to_i + params[:pp4_1_l].to_i
  @schnucker1_sv_total = params[:pp1_1_sv].to_i + params[:pp2_1_sv].to_i + params[:pp3_1_sv].to_i + params[:pp4_1_sv].to_i
  
  @schnucker1_era = (@schnucker1_er_total.to_f / @schnucker1_ip_total.to_f) * 9.to_f
  @schnucker1_whip = @schnucker1_wh_total.to_f / @schnucker1_ip_total.to_f
  
  
  ## calculate player2 totals
  
  @schnucker2 = params[:p2]
  
  @schnucker2_hits_total = total_things(params[:c2_h],params[:firstb2_h],params[:secondb2_h],params[:thirdb2_h],params[:ss2_h],
  params[:of1_2_h],params[:of2_2_h],params[:of3_2_h],params[:ut2_h])
  
  @schnucker2_ab_total = total_things(params[:c2_ab],params[:firstb2_ab],params[:secondb2_ab],params[:thirdb2_ab],params[:ss2_ab],
  params[:of1_2_ab],params[:of2_2_ab],params[:of3_2_ab],params[:ut2_ab])
  
  @schnucker2_ba = @schnucker2_hits_total.to_f / @schnucker2_ab_total.to_f
  
  @schnucker2_runs_total = total_things(params[:c2_r],params[:firstb2_r],params[:secondb2_r],params[:thirdb2_r],params[:ss2_r],
  params[:of1_2_r],params[:of2_2_r],params[:of3_2_r],params[:ut2_r])
  
  @schnucker2_hr_total = total_things(params[:c2_hr],params[:firstb2_hr],params[:secondb2_hr],params[:thirdb2_hr],params[:ss2_hr],
  params[:of1_2_hr],params[:of2_2_hr],params[:of3_2_hr],params[:ut2_hr])
  
  @schnucker2_rbi_total = total_things(params[:c2_rbi],params[:firstb2_rbi],params[:secondb2_rbi],params[:thirdb2_rbi],params[:ss2_rbi],
  params[:of1_2_rbi],params[:of2_2_rbi],params[:of3_2_rbi],params[:ut2_rbi])
  
  @schnucker2_sb_total = total_things(params[:c2_sb],params[:firstb2_sb],params[:secondb2_sb],params[:thirdb2_sb],params[:ss2_sb],
  params[:of1_2_sb],params[:of2_2_sb],params[:of3_2_sb],params[:ut2_sb])
  
  
  @schnucker2_ip_total = params[:pp1_2_ip].to_i + params[:pp2_2_ip].to_i + params[:pp3_2_ip].to_i + params[:pp4_2_ip].to_i
  @schnucker2_er_total = params[:pp1_2_er].to_i + params[:pp2_2_er].to_i + params[:pp3_2_er].to_i + params[:pp4_2_er].to_i
  @schnucker2_h_total = params[:pp1_2_h].to_i + params[:pp2_2_h].to_i + params[:pp3_2_h].to_i + params[:pp4_2_h].to_i 
  @schnucker2_bb_total = params[:pp1_2_bb].to_i + params[:pp2_2_bb].to_i + params[:pp3_2_bb].to_i +  params[:pp4_2_bb].to_i
  @schnucker2_wh_total = @schnucker2_h_total + @schnucker2_bb_total
  
  
  @schnucker2_k_total = params[:pp1_2_k].to_i + params[:pp2_2_k].to_i + params[:pp3_2_k].to_i + params[:pp4_2_k].to_i
  @schnucker2_w_total = params[:pp1_2_w].to_i + params[:pp2_2_w].to_i + params[:pp3_2_w].to_i + params[:pp4_2_w].to_i
  @schnucker2_l_total = params[:pp1_2_l].to_i + params[:pp2_2_l].to_i + params[:pp3_2_l].to_i + params[:pp4_2_l].to_i
  @schnucker2_sv_total = params[:pp1_2_sv].to_i + params[:pp2_2_sv].to_i + params[:pp3_2_sv].to_i + params[:pp4_2_sv].to_i
  
  @schnucker2_era = (@schnucker2_er_total.to_f / @schnucker2_ip_total.to_f) * 9.to_f
  @schnucker2_whip = @schnucker2_wh_total.to_f / @schnucker2_ip_total.to_f
  
## calculate points

  @schnucker1_total = 0.0
  @schnucker2_total = 0.0
  
  if ((@schnucker1_ba * 100.to_f).to_i > (@schnucker2_ba  * 100.to_f).to_i)
    @schnucker1_total += 2
    @schnucker2_total += 1
  elsif ((@schnucker1_ba * 100.to_f).to_i < (@schnucker2_ba * 100.to_f).to_i)
    @schnucker1_total += 1
    @schnucker2_total += 2
  else 
    @schnucker1_total += 1.5
    @schnucker2_total += 1.5
  end
  
  if (@schnucker1_runs_total > @schnucker2_runs_total)
    @schnucker1_total += 2
    @schnucker2_total += 1
  elsif (@schnucker1_runs_total < @schnucker2_runs_total)
    @schnucker1_total += 1
    @schnucker2_total += 2
  else 
    @schnucker1_total += 1.5
    @schnucker2_total += 1.5
  end
  
  if (@schnucker1_hr_total > @schnucker2_hr_total)
    @schnucker1_total += 2
    @schnucker2_total += 1
  elsif (@schnucker1_hr_total < @schnucker2_hr_total)
    @schnucker1_total += 1
    @schnucker2_total += 2
  else 
    @schnucker1_total += 1.5
    @schnucker2_total += 1.5
  end
  
  if (@schnucker1_rbi_total > @schnucker2_rbi_total)
    @schnucker1_total += 2
    @schnucker2_total += 1
  elsif (@schnucker1_rbi_total < @schnucker2_rbi_total)
    @schnucker1_total += 1
    @schnucker2_total += 2
  else 
    @schnucker1_total += 1.5
    @schnucker2_total += 1.5
  end

  if (@schnucker1_sb_total > @schnucker2_sb_total)
    @schnucker1_total += 2
    @schnucker2_total += 1
  elsif (@schnucker1_sb_total < @schnucker2_sb_total)
    @schnucker1_total += 1
    @schnucker2_total += 2
  else 
    @schnucker1_total += 1.5
    @schnucker2_total += 1.5
  end
 
  if (@schnucker1_k_total > @schnucker2_k_total)
    @schnucker1_total += 2
    @schnucker2_total += 1
  elsif (@schnucker1_k_total < @schnucker2_k_total)
    @schnucker1_total += 1
    @schnucker2_total += 2
  else 
    @schnucker1_total += 1.5
    @schnucker2_total += 1.5
  end

 if ((@schnucker1_era * 100.to_f).to_i < (@schnucker2_era * 100.to_f).to_i)
    @schnucker1_total += 2
    @schnucker2_total += 1
  elsif ((@schnucker1_era * 100.to_f).to_i > (@schnucker2_era * 100.to_f).to_i)
    @schnucker1_total += 1
    @schnucker2_total += 2
  else 
    @schnucker1_total += 1.5
    @schnucker2_total += 1.5
  end
  
 if ((@schnucker1_whip * 100.to_f).to_i < (@schnucker2_whip * 100.to_f).to_i)
    @schnucker1_total += 2
    @schnucker2_total += 1
  elsif ((@schnucker1_whip * 100.to_f).to_i > (@schnucker2_whip * 100.to_f).to_i)
    @schnucker1_total += 1
    @schnucker2_total += 2
  else 
    @schnucker1_total += 1.5
    @schnucker2_total += 1.5
 end

  if (@schnucker1_w_total > @schnucker2_w_total)
    @schnucker1_total += 2
    @schnucker2_total += 1
  elsif (@schnucker1_w_total < @schnucker2_w_total)
    @schnucker1_total += 1
    @schnucker2_total += 2
  else 
    @schnucker1_total += 1.5
    @schnucker2_total += 1.5
  end 

  if (@schnucker1_sv_total > @schnucker2_sv_total)
    @schnucker1_total += 2
    @schnucker2_total += 1
  elsif (@schnucker1_sv_total < @schnucker2_sv_total)
    @schnucker1_total += 1
    @schnucker2_total += 2
  else 
    @schnucker1_total += 1.5
    @schnucker2_total += 1.5
  end
  
#### render_to_string here????

   @results_email1 = render_to_string :action => :results

end

  def confirm
    @result_address = params[:result_address]
    NormanMailer.results_email(@result_address).deliver

  end
  

end

  

