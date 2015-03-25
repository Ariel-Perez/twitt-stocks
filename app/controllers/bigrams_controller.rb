class BigramsController < ApplicationController
  def create
    params[:bigrams].each do |bi_params|
      bi_params = bi_params.permit(:ticker_id, :text, :count, :positive_count, :negative_count, :neutral_count)
      @bigram = Bigram.new(bi_params)
      @bigram.save
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
