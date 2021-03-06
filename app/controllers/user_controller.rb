class UserController < ApplicationController
  respond_to :json
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  
  def index
    users = User.all
    render :json => users
  end

  def create
    user = User.new(params.require(:user).permit(:name, :color, :number))
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
  # 
end
