class Api::V1::BaseController < ApplicationController
  #1. no need for CSRF token
  protect_from_forgery with: :null_session

  #2. disable cookies (no set cookies in response header)
  before_action :destroy_session

  def destroy_session
    request.session_options[:skip] = true
  end
end
