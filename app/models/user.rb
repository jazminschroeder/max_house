class User < ActiveRecord::Base
  attr_accessible :email, :name, :oauth_expires_at, :oauth_token, :provider, :uid

  def self.find_or_initialize_from_omniauth(auth)
    Rails.logger.info(auth)    
  end
end
