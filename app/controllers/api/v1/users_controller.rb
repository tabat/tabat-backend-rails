class Api::V1::UsersController <  Api::V1::BaseController

  def profile
    @user = User.find(params[:id])
  end

  def create
    @user = User.create secure_params
  end


  private

  def secure_params
    params.require(:user).permit(:email, :login, :password, :password_confirmation, :name, :location, :introduction)
  end

end
