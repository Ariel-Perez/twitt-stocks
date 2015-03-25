class TrigramsController < ApplicationController
  def create
    params[:trigrams].each do |tri_params|
      tri_params = tri_params.permit(:ticker_id, :text, :count, :positive_count, :negative_count, :neutral_count)
      @trigram = Trigram.new(tri_params)
      @trigram.save
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
