class GummiesController < ApplicationController
  before_action :set_gummy, only: [:edit, :update, :show]
  before_action :move_to_about, except: [:show, :search, :news, :about]
  before_action :set_makers, only: [:new,:create, :edit, :update]

  def index
    @q = Gummy.ransack(params[:q])
    @gummies = @q.result.includes(:user).order("created_at DESC").page(params[:page]).per(10)
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
    @gummy.update(gummy_params)
    redirect_to root_path
  end

  def show
    @comment = Comment.new
    @comments = @gummy.comments.includes(:user)
  end

  def search
    @gummies = Gummy.search(params[:keyword]).order("created_at DESC")
    # インクリメンタルサーチ
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
  end

  def news
  end

  def about
  end

  def other
  end

  def destroy
    Gummy.find(params[:id]).destroy
    redirect_to root_path
  end

  private
  def gummy_params
    params.require(:gummy).permit(:name, :image, :content, :maker_id).merge(user_id: current_user.id)
  end

  def set_gummy
    @gummy = Gummy.find(params[:id])
  end

  def set_makers
    @makers = Maker.all
  end

  def move_to_about
    redirect_to about_gummies_path unless user_signed_in?
  end
end
