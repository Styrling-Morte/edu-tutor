class ParentsController < ApplicationController

  def index

  end

  def show

  end

  def new

  end

  def login

  end

  def edit

  end 

  def signup
    render 'signup'
  end

  def home
    render 'home'
  end

  def new
    user = Parent.new(user_params)
    if user.save
      session[:user_id] = user.id
      render 'home'
    else
      redirect_to '/signup_parents'
    end
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :phone_number, :address,
      :city, :province, :postal_code, :email, :password, :password_confirmation)
  end

end
