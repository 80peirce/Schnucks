class NormanMailer < ActionMailer::Base
  default from: "results@playschnucks.com"
  
  def results_email(user)
    @user = user
    @url = "http://schnucks.herokuapp.com"
    mail(:to => @user, :subject => "Schnuck You")
  end
  

end
