class MessagesController < ApplicationController

  def new

  end

  def send_message
    response = Typhoeus.post('localhost:3000/message.json', 
      params: {title: params[:title], message: params[:message]})

    flash[:alert] = response.return_code
    @message = response.body

    render :new
  end
end
