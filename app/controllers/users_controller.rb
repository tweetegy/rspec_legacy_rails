class UsersController < ApplicationController
  before_filter :load_resource, :only => [:edit, :update]

  def show
  end

  def edit
  end

  def update
    @user.update_attributes(params[:user])

    render :show
  end

private

  def load_resource
    @user = User.find params[:id]
  end

end
