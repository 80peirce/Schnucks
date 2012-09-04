class ScoreController < ApplicationController
  def manual
  end
  
  def results 
  ## calculate player1 totals
  
  @schnucker1 = params[:p1]
  
  @schnucker1_hits_total = params[:c1_h].to_i + params[:firstb1_h].to_i + params[:secondb1_h].to_i + params[:thirdb1_h].to_i +
  params[:ss1_h].to_i + params[:of1_1_h].to_i + params[:of2_1_h].to_i + params[:of3_1_h].to_i + params[:ut1_h].to_i
  
  @schnucker1_ab_total = params[:c1_ab].to_i + params[:firstb1_ab].to_i + params[:secondb1_ab].to_i + params[:thirdb1_ab].to_i +
  params[:ss1_ab].to_i + params[:of1_1_ab].to_i + params[:of2_1_ab].to_i + params[:of3_1_ab].to_i + params[:ut1_ab].to_i
  
  @schnucker1_ba = @schnucker1_hits_total.to_f / @schnucker1_ab_total.to_f
  
  @schnucker1_runs_total = params[:c1_r].to_i + params[:firstb1_r].to_i + params[:secondb1_r].to_i + params[:thirdb1_r].to_i +
  params[:ss1_r].to_i + params[:of1_1_r].to_i + params[:of2_1_r].to_i+ params[:of3_1_r].to_i + params[:ut1_r].to_i
  
  @schnucker1_hr_total = params[:c1_hr].to_i + params[:firstb1_hr].to_i + params[:secondb1_hr].to_i + params[:thirdb1_hr].to_i +
  params[:ss1_hr].to_i + params[:of1_1_hr].to_i + params[:of2_1_hr].to_i + params[:of3_1_hr].to_i + params[:ut1_hr].to_i
  
  @schnucker1_rbi_total = params[:c1_rbi].to_i + params[:firstb1_rbi].to_i + params[:secondb1_rbi].to_i + params[:thirdb1_rbi].to_i +
  params[:ss1_rbi].to_i + params[:of1_1_rbi].to_i + params[:of2_1_rbi].to_i + params[:of3_1_rbi].to_i + params[:ut1_rbi].to_i
  
  @schnucker1_sb_total = params[:c1_sb].to_i + params[:firstb1_sb].to_i + params[:secondb1_sb].to_i + params[:thirdb1_sb].to_i +
  params[:ss1_sb].to_i + params[:of1_1_sb].to_i + params[:of2_1_sb].to_i + params[:of3_1_sb].to_i + params[:ut1_sb].to_i
  
  
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
  
  @schnucker2_hits_total = params[:c2_h].to_i + params[:firstb2_h].to_i + params[:secondb2_h].to_i + params[:thirdb2_h].to_i +
  params[:ss2_h].to_i + params[:of1_2_h].to_i + params[:of2_2_h].to_i + params[:of3_2_h].to_i + params[:ut2_h].to_i
  
  @schnucker2_ab_total = params[:c2_ab].to_i + params[:firstb2_ab].to_i + params[:secondb2_ab].to_i + params[:thirdb2_ab].to_i +
  params[:ss2_ab].to_i + params[:of1_2_ab].to_i + params[:of2_2_ab].to_i + params[:of3_2_ab].to_i + params[:ut2_ab].to_i
  
  @schnucker2_ba = @schnucker2_hits_total.to_f / @schnucker2_ab_total.to_f
  
  @schnucker2_runs_total = params[:c2_r].to_i + params[:firstb2_r].to_i + params[:secondb2_r].to_i + params[:thirdb2_r].to_i +
  params[:ss2_r].to_i + params[:of1_2_r].to_i + params[:of2_2_r].to_i+ params[:of3_2_r].to_i + params[:ut2_r].to_i
  
  @schnucker2_hr_total = params[:c2_hr].to_i + params[:firstb2_hr].to_i + params[:secondb2_hr].to_i + params[:thirdb2_hr].to_i +
  params[:ss2_hr].to_i + params[:of1_2_hr].to_i + params[:of2_2_hr].to_i + params[:of3_2_hr].to_i + params[:ut2_hr].to_i
  
  @schnucker2_rbi_total = params[:c2_rbi].to_i + params[:firstb2_rbi].to_i + params[:secondb2_rbi].to_i + params[:thirdb2_rbi].to_i +
  params[:ss2_rbi].to_i + params[:of1_2_rbi].to_i + params[:of2_2_rbi].to_i + params[:of3_2_rbi].to_i + params[:ut2_rbi].to_i
  
  @schnucker2_sb_total = params[:c2_sb].to_i + params[:firstb2_sb].to_i + params[:secondb2_sb].to_i + params[:thirdb2_sb].to_i +
  params[:ss2_sb].to_i + params[:of1_2_sb].to_i + params[:of2_2_sb].to_i + params[:of3_2_sb].to_i + params[:ut2_sb].to_i
  
  
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
  
  end
end

  

