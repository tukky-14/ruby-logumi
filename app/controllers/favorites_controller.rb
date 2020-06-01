class FavoritesController < ApplicationController
  def create
    @favotite = current_user.favorites.create(gummy_id: params[:gummy_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @gummy = Gummy.find(params[:gummy_id])
    @favotite = current_user.favorites.find_by(gummy_id: @gummy.id)
    @favotite.destroy
    redirect_back(fallback_location: root_path)
  end
end
