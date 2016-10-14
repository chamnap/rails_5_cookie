class SessionsController < ApplicationController
  def destroy
    cookies.delete(:remember_token)
    redirect_to root_path
  end
end
