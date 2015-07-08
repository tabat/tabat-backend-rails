class Api::V1::BaseController <  ActionController::Base
  #1. no need for CSRF token
  protect_from_forgery with: :null_session

  #2. disable cookies (no set cookies in response header)
  before_action :destroy_session

  attr_accessor :current_user

  def destroy_session
    request.session_options[:skip] = true
  end

  def api_error(opts={})
    render nothing: true, status: opts[:status]
  end

end
