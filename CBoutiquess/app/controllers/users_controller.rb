class UsersController < ApplicationController

  before_action :authenticate_user, only: [:user]

  def new
    @user = User.new
    @catalogo_usuarios = CatalogoUsuario.all
  end

  def main

  end

  def user

  end



    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to user_path
      else
        flash[:alert] = @user.errors.full_messages
        render :new
      end
    end

  private
  def user_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation , :typeUser)
  end
end
