class WitchController < ApplicationController
  before_action :authenticate_user!

  def myrecipes
    @recipes = current_user.recipes.page(params[:page]).per(7)
  end
end
