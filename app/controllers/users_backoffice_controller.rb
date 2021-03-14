class UsersBackofficeController < ApplicationController
  before_action :authenticate_user!
  layout 'users_backoffice'


  private

  def build_avatar
    current_user.build_user_profile if current_user.user_profile.blank? 
    
  end
  

end
