# active-admin-implementation

active-admin-implementation is Ruby on Rails 3.2.7 application integrated with ActiveAdmin gemAuthentication system has been provided by using the Devise gem (https://github.com/plataformatec/devise/)

## Quick start

Clone the git repo - `git clone git@github.com:csaurav/active-admin-implementation.git` - or [download it]()

Perform the following steps to run the application: 

	1. cd cloned-directory
	2. bundle install
	3. Go inside config/envrionments/development.rb and change below portion of the code with your gmail username and password

	ActionMailer::Base.smtp_settings = {
	    :address => "smtp.gmail.com",
	    :port => "587",
	    :domain => "gmail.com",
	    :enable_starttls_auto => true,
	    :authentication => :login,
	    :user_name => "userid@gmail.com",
       :password => "password"
	  }

	4.Execute rake to create the users database
	 		rake db:migrate

	The default user name/password is admin@example.com/password


### Everything else:

The Unlicense (aka: public domain)
