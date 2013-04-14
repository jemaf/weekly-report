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
  end

  def index
    @users = User.all
  end
end
