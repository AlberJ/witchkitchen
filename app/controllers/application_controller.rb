class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:edit, :new, :destroy]

  protect_from_forgery with: :exception
end
