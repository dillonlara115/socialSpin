class ProfilesController < ApplicationController
  def show
    @user = User.find_by_user_name(params[:id])   
  end
  
end
