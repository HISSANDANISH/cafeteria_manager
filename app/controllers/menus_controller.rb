class MenusController < ApplicationController
  def index
    render "index"
  end

  def create
    @menu = Menu.create!(name: params[:name])
    redirect_to new_menu_items_path
  end

  def new
  end
end
