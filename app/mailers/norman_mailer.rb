class NormanMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def welcome_email(user)
    @user = user
    @url = "http://schnucks.herokuapp.com"
    mail(:to => @user, :subject => "Schnuck You")
  end
  

end
