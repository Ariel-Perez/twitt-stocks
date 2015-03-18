class UnigramsController < ApplicationController
  before_action :set_unigram, only: [:show, :edit, :update, :destroy]

  # GET /unigrams
  # GET /unigrams.json
  def index
    @unigrams = Unigram.all
  end

  # GET /unigrams/1
  # GET /unigrams/1.json
  def show
  end

  # GET /unigrams/new
  def new
    @unigram = Unigram.new
  end

  # GET /unigrams/1/edit
  def edit
  end

  # POST /unigrams
  # POST /unigrams.json
  def create
    @unigram = Unigram.new(unigram_params)

    respond_to do |format|
      if @unigram.save
        format.html { redirect_to @unigram, notice: 'Unigram was successfully created.' }
        format.json { render action: 'show', status: :created, location: @unigram }
      else
        format.html { render action: 'new' }
        format.json { render json: @unigram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unigrams/1
  # PATCH/PUT /unigrams/1.json
  def update
    respond_to do |format|
      if @unigram.update(unigram_params)
        format.html { redirect_to @unigram, notice: 'Unigram was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @unigram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unigrams/1
  # DELETE /unigrams/1.json
  def destroy
    @unigram.destroy
    respond_to do |format|
      format.html { redirect_to unigrams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unigram
      @unigram = Unigram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unigram_params
      params[:unigram]
    end
end
