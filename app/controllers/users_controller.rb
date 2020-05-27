class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @user_id = user.id
    @name = user.name
    @like = user.like
    @image = user.image
    @introduction = user.introduction
    @gummies = user.gummies.order("created_at DESC")
  end
end
