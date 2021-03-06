class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup-user'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params) 
      redirect_to root_url
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :cpf, :telephone, :registry, :password, :password_confirmation)
  end

end
