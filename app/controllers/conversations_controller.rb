class ConversationsController < ApplicationController
  # before_action :authorized

  def index
    @conversations = Conversation.all
    render json: @conversations
  end

  def show
    @conversation = Conversation.find(params[:id])
    render json: @conversation
  end

  def create
    if Conversation.between(params[:sender_id], params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
      @conversation = Conversation.create(conversation_params)
    end
    render json: @conversation
  end

  private

  def conversation_params
    params.permit(:sender_id, :recipient_id)
  end

end
