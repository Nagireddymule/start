ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address               => 'smtp.sendgrid.net',
	:port                  => '587',
	:authentication        => :plain,
	:user_name             => 'chanti.mule123@gmail.com',
	:password              => 'chanti@nithya123',
	:domain                => 'heroku.com',
	:enable_starttls_auto  => true
}