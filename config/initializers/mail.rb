ActionMailer::Base.default_url_options[:host] = "local301.org"

ActionMailer::Base.smtp_settings = {
:address => "smtp.mandrillapp.com",
:port => '587',
:authentication => :plain,
:user_name => "jack@federatedtalent.com",
:password => "9L8GEF6IhAUqrW0ikvK1yQ"
}