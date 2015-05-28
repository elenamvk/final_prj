class OffersController < ApplicationController
  before_action :set_request
  before_action :set_offer, only: [ :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /offers
  # GET /offers.json
  def index
    @offers = Offer.all
    @offer = @request.offers(params[:request_id])

  end

  # GET /offers/1
  # GET /offers/1.json
  def show
    @offer = @request.offers(params[:request_id])
  end


  # GET /offers/new
  def new
    @offer = @request.offers.new
  end

  # GET /offers/1/edit
  def edit
    @offer = @request.offers(offer_params)
  end

  # POST /offers
  # POST /offers.json
  def create

    @offer = current_user.request.offers.new(offer_params)




    respond_to do |format|
      if @offer.save
        format.html { redirect_to @request, notice: 'Offer was successfully created.' }
        format.json { render :show, offered: :created, location: @offer }
      else
        format.html { render :new }
        format.json { render json: @offer.errors, offered: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offers/1
  # PATCH/PUT /offers/1.json
  def update
    respond_to do |format|
      if @offer.update(offer_params)
        format.html { redirect_to @offer, notice: 'Offer was successfully updated.' }
        format.json { render :show, offered: :ok, location: @offer }
      else
        format.html { render :edit }
        format.json { render json: @offer.errors, offered: :unprocessable_entity }
      end
    end
  end

  def accept
   @offer = current_user.offers.find(params[:id])
   @offer.offered = true
   @offer.save
   redirect_to @request
  end

  # DELETE /offers/1
  # DELETE /offers/1.json
  def destroy
    @offer.destroy
    respond_to do |format|
      format.html { redirect_to offers_url, notice: 'Offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_request
      @request = Request.find(params[:request_id])
    end

    def set_offer
      @offer = Offer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_params
      params.require(:offer).permit(:message, :host_id, :request_id, :offered)
    end
end
