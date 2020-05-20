class GummiesController < ApplicationController
  def index
    @gummies = Gummy.includes(:user)
  end

  def new
    @gummy = Gummy.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
