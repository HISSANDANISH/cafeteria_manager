class MenuItemsController < ApplicationController
  def index
    id = session[:current_menu_id]
    menu = Menu.find(id)
    @menu_items = menu.menu_items
    render "index"
  end

  def new
  end

  def create
    menu_item = MenuItem.create!(
      name: params[:name],
      description: params[:name],
      price: params[:name],
      menu_id: session[:current_menu_id],
    )
    render plain: "MENU ITEM successfully created"
  end
end
