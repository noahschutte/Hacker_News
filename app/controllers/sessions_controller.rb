class SessionsController < ApplicationController

  def logout
    session.clear
    redirect_to '/'
  end

  def login

  end

end
