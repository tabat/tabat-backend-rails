class Api::V1::SessionsController <  Api::V1::BaseController
  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      self.current_user = @user
    else
      api_error(status: 401)
    end
  end
end
