class Api::V1::UsersController < ApplicationController
  def profile
    @user = User.find(params[:id])
  end
end
