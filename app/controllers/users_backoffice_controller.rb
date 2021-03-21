class UsersBackofficeController < ApplicationController
  before_action :authenticate_user!
  before_action :f_buildProfileAvataR

  layout 'users_backoffice'


  private

  def f_buildProfileAvataR
    current_user.build_user_profile if current_user.user_profile.blank? 
    
  end
  

end
