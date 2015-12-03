class OauthController < ApplicationController
  CALLBACK_URL = "http://localhost:3000/oauth/callback"
  def connect
    redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL)
  end

  def callback
  end
end
