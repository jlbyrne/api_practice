class UserController < ApplicationController
  respond_to :json
  
  def index
    users = User.all
    render :json => users
  end

  def create
    p "* "*100
    p params
    user = user.new(params[:user])
    if user.save
      render :json => user
    else
      render :json => user.errors, status: :bad_request
    end
  end

  def update
    user = User.find(params[:id]);
    if user.update_attributes(params[:user])
      render :json => user
    else
      render :json => user.errors, status: :bad_request
    end
  end

  def destroy
    user = User.find(params[:id]) 
    if user.destroy
      render :json => nil, status: :ok
    else
      render :json => user.errors, status: :bad_request
    end
  end

  def show
    user = User.find(params[:id])
    render :json => user
  end
end
