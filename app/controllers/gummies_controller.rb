class GummiesController < ApplicationController
  def index
    @gummies = Gummy.includes(:user).order("created_at DESC")
  end

  def new
    @gummy = Gummy.new
    @maker = maker_list
  end

  def create
    @gummy = Gummy.new(gummy_params)
    if @gummy.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @gummy = Gummy.find(params[:id])
    @maker = maker_list
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

  def destroy
    gummy = Gummy.find(params[:id])
    gummy.destroy
    redirect_to root_path
  end

  private
  def gummy_params
    params.require(:gummy).permit(:product, :maker, :image, :content).merge(user_id: current_user.id)
  end

  def maker_list
    [
      "UHA味覚党", "KANRO", "meiji", "ブルボン", "カバヤ", "Asahi", "春日井製菓", "不二家", "エイム", "ノーベル",
      "クリート", "ロッテ", "クラシエフーズ", "森永製菓", "ハリボー", "その他"
    ]
  end

end
