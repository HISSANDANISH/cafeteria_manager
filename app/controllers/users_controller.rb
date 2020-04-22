class UsersController < ApplicationController
  skip_before_action :ensure_user_logged_in, only: [:new, :create]

  def index
    render "index"
  end

  def new
  end

  def create
    new_user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password_digest],
      phone: params[:phone],
      address: params[:address],
      role: params[:role],
    )
    if new_user.save
      if current_user
        redirect_to "users#index"
      else
        session[:current_user_id] = new_user.id
        flash[:success] = "Signed Up successfully & Logged In"
        redirect_to "/"
      end
    else
      flash[:error] = new_user.errors.full_messages.join(", ")
      redirect_to new_user_path
    end
  end
end
