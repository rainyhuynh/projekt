class RegistrationsController < Devise::RegistrationsController
    private
    def sign_up_param
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def account_update_param
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :curent_password)
    end

end