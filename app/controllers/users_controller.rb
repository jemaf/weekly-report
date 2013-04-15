class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:notice] = t("flash.users.create.notice")
      redirect_to new_report_path
    else
      flash.now[:error] = t("flash.users.create.error")
      render :new
    end

  end

  def delete
    @user = User.find(params[:id])
    @user.destroy

    flash[:info] = t("flash.users.delete")
    redirect_to users_path
  end

  def index
    @users = User.all
  end
end
