module UsersBackoffice::ProfileHelper
    def h_genderSelecT(current_user, current_gender)
        current_user.user_profile.gender == current_gender ? 'btn-primary' : 'btn-default'
      end
end
