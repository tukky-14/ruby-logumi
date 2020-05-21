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
    @gummy = Gummy.find(params[:id])
  end

  def destroy
    gummy = Gummy.find(params[:id])
    gummy.destroy
    redirect_to root_path
  end

  private
  def gummy_params
    params.require(:gummy).permit(:product, :maker, :image, :content).merge(user_id: current_user.id)
  end
end
