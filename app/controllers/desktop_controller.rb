class DesktopController < ApplicationController
  
  def index 
    @users = User.all
  end
   
end
