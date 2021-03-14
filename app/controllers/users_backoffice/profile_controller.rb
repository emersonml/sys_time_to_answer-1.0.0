class UsersBackoffice::ProfileController < UsersBackofficeController
  # before_action :f_set_user
  before_action :f_verifyPassworD, only: [:update]

    
    def edit
      #!!! quando se tem um relacionamento do tipo has_name o build server para criar os registros da tabela relacionada de se o relacionamento fosse o contrario o build ficaria no final tipo: user_profiles.build
      # @user.build_user_profile if @user.user_profile.blank? 
      current_user.build_user_profile if current_user.user_profile.blank? 


    end
    
    def update
        if current_user.update(f_params_user)
          # sign_in(@user, bypass: true)  # esse comando foi atualizado 
          bypass_sign_in(current_user)  #  faz com que o usuario ao alter a senha nao seja deslogado (rails tem uma funcao interna q desloga o user quando a senha é alterada)
          if f_params_user[:user_profile_attributes][:avatar]
          redirect_to users_backoffice_profile_path, notice: "Avatar Atualizado com Sucesso"
          else
          redirect_to users_backoffice_profile_path, notice: "Usuário Corrente Atualizado com Sucesso"
          end
        else
          render :edit
        end
    end
        
    
    private
    
    def f_params_user
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation,
        user_profile_attributes: [:id, :address, :gender, :birthdate, :avatar])
        # user_profile_attributes: [:id, :address, :zip_code, :gender, :birthdate, :avatar])
      end
      
      def f_verifyPassworD
        # binding.pry        
        if params[:user][:password].blank? && params[:user][:password_confirmation].blank? 
          params[:user].extract!(:password, :password_confirmation)
        end
      end
      

      ############# OBSOLETO PELA FORÇA DA INTELIGENCIA
      
      # def f_set_user
      #     @user = User.find(current_user.id) #currente_user pq só intereça editar o proprio user
      # end
      
      
    end
    