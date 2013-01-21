class SessionController < ApplicationController
  def create
    user = User.find_or_initialize(auth)
    session[:user_id] = user.user_id
    redirect_to root_url
  end
end