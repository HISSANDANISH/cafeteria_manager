class MenuItemsController < ApplicationController
  def index
  end

  def new
  end

  def create
    menu_item = MenuItem.create!(
      name: params[:name],
      description: params[:name],
      price: params[:name],
    )
    render plain: "MENU ITEM successfully created"
  end
end
