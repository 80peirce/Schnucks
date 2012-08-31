class ScoreController < ApplicationController
  def manual
  end
  
  def results 
  
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
  
  end
end

  

