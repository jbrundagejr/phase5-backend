class UsersController < ApplicationController
  
  before_action :find_user, only: [:show, :destroy, :update]
  before_action :authorized, only: [:keep_logged_in, :destroy, :update]

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

  def create
    @user = User.create(user_params)
    if @user.valid?
      user_token = encode_token({user_id: @user.id})
      render json: {
        user: UserSerializer.new(@user),
        token: user_token
      }
    else
      render json: {error: "Unable to create profile."}, status: 422
    end
  end
  
  def index
    @users = User.all
    render json: @users
  end

  def show
  end

  def keep_logged_in
    user_token = encode_token({user_id: @user.id})
      render json: {
        user: UserSerializer.new(@user),
        token: user_token
      }
  end

  def destroy
    @user.destroy
  end

  def update
    @user = User.update(user_params)
    if @user.valid?
      render json: {
        user: UserSerializer.new(@user)
      }
    else
      render json: {error: "Unable to create profile."}, status: 422
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
    render json: @user
  end

  def user_params
    params.permit(:username, :email, :password, :profile_img)
  end

end
