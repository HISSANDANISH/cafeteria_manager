class MenusController < ApplicationController
  before_action :ensure_user_logged_in

  def index
    render "index"
  end

  def create
    menu = Menu.create!(name: params[:name])
    redirect_to "/"
  end

  def new
  end

  def update
    id = params[:id]
    session[:active_menu_id] = id
    redirect_to "/"
  end
end
