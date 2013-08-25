class AuthenticationsController < ApplicationController
  def all
  	auth = request.env['omniauth.auth']
  	authentication = User.first.authentications.where(:provider => auth['provider'], :uid => auth['uid']).first
  	  if current_user
  	  	##Assuming a logged-in user, see if they already linked their account
  	    flash.notice = "#{auth['provider']} is already linked to your account."
  	    redirect_to '/'
  	  else
  	  	current_user.authentications.create!(:provider => auth['provider'], :uid => auth['uid'])
  	  	flash.notice = "Successfully logged in using your #{auth['provider']} account!"
  	  	sign_in_and_redirect current_user #TODO: Where do we want to redirect them?
  	  end

  	elsif authentication
  	  ##No current logged-in user, but we have this provider and uid
      flash.notice = "Signed in with your #{auth['provider']} account!"
  	  sign_in_and_redirect(:user, authentication.user)

  	elsif user = create_new_omniauth_user(auth)
  	  user.authentications.create!(:provider => auth['provider'], :uid =>['auth'])
  	  flash.notice = "Successfully created  account!"
  	  sign_in_and_redirect user #TODO: Think about where new users should be redirected to in app

  	else
  	  session["devise.user_attributes"] = auth
  	  redirect_to new_user_registration_url
  	end
  end  		

  alias_method :github, :all, 
  alias_method :twitter, :all,
  alias_method :facebook, :all,
  alias_method :linkedin, :all,
  alias_method :google, :all,
  alias_method :yahoo, :all

  def create_new_omniauth_user(auth)
  	user = User.new_with_session(auth, session)
  	if user.save
  	  user
  	else
  	  nil
  	end
  end 	

end
