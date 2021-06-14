class UsersController < ApplicationController
  
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
    # user_array = @users.map do |user_instance|
    #     { user: UserSerializer.new(user_instance),
    #     token: encode_token({user_id: user_instance.id})}
    # end
    # render json: user_array
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def keep_logged_in
    user_token = encode_token({user_id: @user.id})
      render json: {
        user: UserSerializer.new(@user),
        token: user_token
      }
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.valid?
      render json: {
        user: UserSerializer.new(@user)
      }
    else
      render json: {error: "Unable to create profile."}, status: 422
    end
  end

  private

  def user_params
    params.permit(:username, :email, :password, :profile_img)
  end

end
