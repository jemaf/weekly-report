class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:notice] = t("flash.users.create.notice")
      redirect_to new_user_path
    else
      flash[:error] = t("flash.users.create.error")
      render :new
    end

  end

  def delete
  end

  def index
  end
end
