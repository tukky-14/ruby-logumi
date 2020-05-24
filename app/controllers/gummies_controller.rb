class GummiesController < ApplicationController
  before_action :set_gummy, only: [:edit, :update, :show]

  def index
    @gummies = Gummy.includes(:user).order("created_at DESC")
  end

  def new
    @gummy = Gummy.new
  end

  def create
    @gummy = Gummy.new(gummy_params)
    if @gummy.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    gummy.update(gummy_params)
    redirect_to root_path
  end

  def show
    @comment = Comment.new
    @comments = @gummy.comments.includes(:user)
  end

  def search
    @gummies = Gummy.search(params[:keyword]).order("created_at DESC")
    respond_to do |format|
      format.html
      format.json
    end
  end

  def destroy
    Gummy.find(params[:id]).destroy
    redirect_to root_path
  end

  private
  def gummy_params
    params.require(:gummy).permit(:product, :image, :content, :maker_id).merge(user_id: current_user.id)
  end

  def set_gummy
    @gummy = Gummy.find(params[:id])
  end
end
