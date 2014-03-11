class UsersController < ApplicationController
  before_filter :load_resource, :only => [:edit, :update]

  def index
  end

  def show
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user.update_attributes(params[:user])

    render :index
  end

private

  def load_resource
    @user = User.find params[:id]
  end

end
