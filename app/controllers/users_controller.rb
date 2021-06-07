class UsersController < ApplicationController

  before_action :find_user, only: [:show]

  def index
    @users = User.all
    render json: @users
  end

  def show
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      user_token = encode_token({user_id: @user.id})
      render json: {
        user: UserSerializer.new(@user),
        token: user_token
      }
    else
      render json: {error: "Incorrect Email or Password."}, status: 422
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
    render json: @user
  end

end
