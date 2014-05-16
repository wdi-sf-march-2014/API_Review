class ApisController < ApplicationController
  
  def message
    respond_to do |format|
      @json_object = {title: params[:title], message: params[:message]}
      format.json { render json: @json_object, status: :ok }
    end
  end

end
