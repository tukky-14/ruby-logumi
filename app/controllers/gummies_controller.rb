class GummiesController < ApplicationController
  def index
    @gummies = Gummy.includes(:user).order("created_at DESC")
  end

  def new
    @gummy = Gummy.new
  end

  def create
    Gummy.create(gummy_params)
    redirect_to root_path
  end

  def edit
    @gummy = Gummy.find(params[:id])
  end

  def update
    gummy = Gummy.find(params[:id])
    gummy.update(gummy_params)
    redirect_to root_path
  end

  def show
  end

  def destroy
  end

  private
  def gummy_params
    params.require(:gummy).permit(:product, :maker, :image, :content).merge(user_id: current_user.id)
  end
end
