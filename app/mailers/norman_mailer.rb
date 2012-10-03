class NormanMailer < ActionMailer::Base
  default from: "results@playschnucks.com"
  
  def results_email(user)
    @user = user
    @url = "http://schnucks.herokuapp.com"
    attachments.inline['results.html'] = Rails.public_path+"results.html"
    mail(:to => @user, :subject => "Schnuck You")
  end
  

end
