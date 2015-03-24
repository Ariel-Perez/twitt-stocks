class TickersController < ApplicationController
  before_action :set_ticker, only: [:show, :edit, :update, :destroy]

  # GET /tickers
  # GET /tickers.json
  def index
    @tickers = Ticker.all
  end

  # GET /tickers/1
  # GET /tickers/1.json
  def show
    unigrams_result = Unigram.select('text', 'count').where(ticker_id: @ticker.id).order(count: :desc).limit(50)
    bigrams_result = Bigram.select('text', 'count').where(ticker_id: @ticker.id).order(count: :desc).limit(50)
    trigrams_result = Trigram.select('text', 'count').where(ticker_id: @ticker.id).order(count: :desc).limit(50)

    @unigrams = []
    @bigrams = []
    @trigrams = []

    unigrams_result.each do |unigram|
      @unigrams << [unigram.text, unigram.count]
    end

    bigrams_result.each do |bigram|
      @bigrams << [bigram.text, bigram.count]
    end

    trigrams_result.each do |trigram|
      @trigrams << [trigram.text, trigram.count]
    end

    @mentions = Mention.where(ticker_id: @ticker.id)
    @comments = Comment.where(ticker_id: @ticker.id)
  end

  # GET /tickers/new
  def new
    @ticker = Ticker.new
  end

  # GET /tickers/1/edit
  def edit
  end

  # POST /tickers
  # POST /tickers.json
  def create
    @ticker = Ticker.new(ticker_params)

    respond_to do |format|
      if @ticker.save
        format.html { redirect_to @ticker, notice: 'Ticker was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ticker }
      else
        format.html { render action: 'new' }
        format.json { render json: @ticker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickers/1
  # PATCH/PUT /tickers/1.json
  def update
    respond_to do |format|
      if @ticker.update(ticker_params)
        format.html { redirect_to @ticker, notice: 'Ticker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ticker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickers/1
  # DELETE /tickers/1.json
  def destroy
    @ticker.destroy
    respond_to do |format|
      format.html { redirect_to tickers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticker
      if Ticker.exists?(params[:id])
        @ticker = Ticker.find(params[:id])
      else
        @ticker = Ticker.find_by(name: params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticker_params
      params[:ticker]
    end
end
