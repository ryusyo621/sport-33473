class MessagesController < ApplicationController
  def create
    message = Message.create(message_params)
    redirect_to  "/sports/#{message.sport.id}"
  end

  private
  def message_params
    params.require(:message).permit(:comment).merge(user_id: current_user.id, sport_id: params[:sport_id])
  end
end
