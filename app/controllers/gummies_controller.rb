class GummiesController < ApplicationController
  def index
    @gummies = Gummy.includes(:user).order("created_at DESC")
  end

  def new
    @gummy = Gummy.new

    # # リファクタリング
    # return nil if params[:keyword] == ""
    # @gummies = Gummy.where(['product LIKE ?', "%#{params[:keyword]}%"] )
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
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
    @gummy = Gummy.find(params[:id])
  end

  def update
    gummy = Gummy.find(params[:id])
    gummy.update(gummy_params)
    redirect_to root_path
  end

  def show
    @gummy = Gummy.find(params[:id])
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
    gummy = Gummy.find(params[:id])
    gummy.destroy
    redirect_to root_path
  end

  private

  def gummy_params
    params.require(:gummy).permit(:product, :image, :content, :maker_id).merge(user_id: current_user.id)
  end
end
