class MessagesController < ApplicationController

  before_action :authorized, only: [:create, :destroy]

  def create
    @message = @user.messages.create(message_params)
    render json: @message
  end

  def destroy
    @message = Message.find(params[:id])
    render json: @message
    @message.destroy
  end

  private

  def message_params
    params.permit(:content, :conversation_id)
  end

end
