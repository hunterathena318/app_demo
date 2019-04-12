class UsersController < ApplicationController
  
  def index
   
  end
  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "Register success"
      log_in @user
      redirect_to user_path @user
    else
      flash[:success] = "Register failed"
      render :new
    end
  end
  def show
    @user=User.find(params[:id])
  end
  def new
    
  end
  private
  def user_params
    params.require(:user).permit :name, :password, :password_confirmation
  end
  
end