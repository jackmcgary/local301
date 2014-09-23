class Mailer < ActionMailer::Base
  default :from => "Local 301 <hi@local301.org>"
  #layout "email_template"

  def email(email)
    @email = email
    email_bcc = @email.sender.email
    email_bcc = @email.bcc + ", " + email_bcc if @email.bcc #only add if bcc's were listed 
    mail(:from => @email.from, :to => @email.to, :cc => @email.cc, :bcc => email_bcc, :subject => @email.subject)
  end

  def send_mail(normal_hash)
    mail( :from => normal_hash[:from], 
          :to => normal_hash[:to], 
          :cc => (normal_hash[:cc] || ""), 
          :bcc => (normal_hash[:bcc] || ""), 
          :subject => (normal_hash[:subject] || ""), 
          :body => (normal_hash[:body] || "")).deliver
  end

  def application_notification(member)
    @member = member
    mail(:to => "hi@local301.org", :subject => "Local 301 Application").deliver
  end


end