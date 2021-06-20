class MessagesController < ApplicationController

  before_action :authorized, only: [:create, :destroy]

  def show
    @message = Message.find(params[:id])
    render json: @message
  end

  def create
    @message = @user.messages.create(message_params)
    @conversation = Conversation.find(@message[:conversation_id])
    ConversationChannel.broadcast_to(@conversation, MessageSerializer.new(@message))
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
