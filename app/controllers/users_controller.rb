class UsersController < ApplicationController

  def index
    if current_user.blank?
      render "login"
    else
      redirect_to "/users/#{current_user.id}"
    end
  end

  def show
    if current_user.account_type == "parent"
      render "parent_home"
    elsif current_user.account_type == "tutor"
      render "tutor_home"
    end
  end

  def new
    account_type = params[:account_type]
    render "signup", :locals => {:account_type => account_type}
  end

  def edit
    render "signup"
  end

  def update
  end

  def destroy
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/users'
    else
      redirect_to '/users#new'
    end
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :phone_number, :address,
      :city, :province, :postal_code, :email, :account_type,
      :password, :password_confirmation)
  end

end
