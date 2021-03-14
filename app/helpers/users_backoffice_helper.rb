module UsersBackofficeHelper

    def h_avatarUrL
        avatar = current_user.user_profile.avatar    
        avatar.attached? ? avatar : 'img.jpg'    

    end
    
end
