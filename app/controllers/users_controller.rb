class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @gummies = @user.gummies.order("created_at DESC")
  end
end
