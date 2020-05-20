class GummiesController < ApplicationController
  def index
    @gummies = Gummy.includes(:user)
  end

  def new
    @gummy = Gummy.new
  end

  def create
    Gummy.create(gummy_params)
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
  def gummy_params
    # params.require(:gummy).permit()
  end
end
