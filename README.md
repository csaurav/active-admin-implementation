# rails-inception

rails-inception is a bootstrap application Ruby on Rails 3.2.7, which also uses HTML5 Boilerplate, Twitter Bootstrap. It's been inspired from railStrap. Authentication system has been provided by using the Devise gem (https://github.com/plataformatec/devise/)

## Quick start

Clone the git repo - `git clone git://github.com/csaurav/rails-inception.git` - or [download it](https://github.com/csaurav/rails-inception/downloads)

Perform the following steps to run the application: 
<pre>
	1. cd cloned-directory
	2. bundle install
	3. Go inside config/envrionments/development.rb and change below portion of the code with your gmail username and password

	ActionMailer::Base.smtp_settings = {
	    :address => "smtp.gmail.com",
	    :port => "587",
	    :domain => "gmail.com",
	    :enable_starttls_auto => true,
	    :authentication => :login,
	    :user_name => "someuser@gmail.com",
	    :password => "*********"
	  }


	4.Execute rake to create the users database
	 		rake db:migrate
<pre>



### Everything else:

The Unlicense (aka: public domain)
