class Api::V1::SessionsController <  Api::V1::BaseController
  def create
    @user = if params[:loginName].include? '@'
      User.find_by(email: params[:loginName])
    else
      User.find_by(login: params[:loginName])
    end

    if @user && @user.authenticate(params[:password])
      self.current_user = @user
    else
      api_error(status: 401)
    end
  end
end
