class AdminsBackofficeController < ApplicationController
  before_action :authenticate_admin!  ### para chegar no admins_backoffice tem que passar pelo admin (admin do devise) 
  layout 'admins_backoffice'

end
