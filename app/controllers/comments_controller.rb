class CommentsController < ApplicationController
  def create
    params[:comments].each do |com_params|
      com_params = com_params.permit(:ticker_id, :text, :sentiment, :support, :extract, :url)
      @comment = Comment.new(com_params)
      @comment.save
    end

    respond_to do |format|
      msg = { :status => :ok, :message => "Success!", :html => '<b></b>' }
      format.html do
        redirect_to '/'
      end
      format.json { render :json => msg }
    end
  end
end
