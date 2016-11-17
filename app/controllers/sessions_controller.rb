class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
    def create
      @user = User.find_by(email: params[:session][:email].downcase)

      if @user && @user.authenticate(params[:session][:password])
        sign_in(@user)
        redirect_to '/pages/upload'
      else
        render 'new'
      end
    end

    def new
    end

    def destroy
      sign_out
    end
end
