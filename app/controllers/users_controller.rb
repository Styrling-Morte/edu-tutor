class UsersController < ApplicationController
  include UsersHelper

  def has_wards?
    if @current_user.wards.blank?
      return false
    else
      return true
    end
  end
  helper_method :has_wards?

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
      render "tutor_detailed_homepage.html.erb"
    end
  end

  def new
    account_type = params[:account_type]
    render "signup", :locals => {:account_type => account_type}
  end

  def edit

  end

  def update
  end

  def destroy
  end

  def search

  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
        if current_user.account_type == "tutor"
          render "tutor-information-form.html.erb"
        else 
           redirect_to '/users'
        end 
     
    else
      account_type = params[:account_type]
      render "signup", :locals => {:account_type => account_type}
    end
  end

  def search
    render "tutor_search"
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :phone_number, :address,
      :city, :province, :postal_code, :email, :account_type,
      :password, :password_confirmation)
  end

end
