class Api::V1::UsersController < ApplicationController
  def profile
    @uesr = User.find(params[:id])

  end
end
