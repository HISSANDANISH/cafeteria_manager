class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = User.create!(
      name: params[:name],
      email: params[:email],
      password_digest: params[:password_digest],
      phone: params[:phone],
      address: params[:address],
    )
    redirect_to "menus#index"
  end
end
