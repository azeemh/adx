class TiersController < ApplicationController
  before_action :set_tier, only: [:show, :edit, :update, :destroy]

  # GET /tiers
  def index
    @tiers = Tier.all
  end

  # GET /tiers/1
  def show
  end

  # GET /tiers/new
  def new
    @tier = Tier.new
  end

  # GET /tiers/1/edit
  def edit
  end

  # POST /tiers
  def create
    @tier = Tier.new(tier_params)

    if @tier.save
      redirect_to @tier, notice: 'Tier was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tiers/1
  def update
    if @tier.update(tier_params)
      redirect_to @tier, notice: 'Tier was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tiers/1
  def destroy
    @tier.destroy
    redirect_to tiers_url, notice: 'Tier was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tier
      @tier = Tier.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tier_params
      params.require(:tier).permit(:title, :vertical_name, tier_ids:[])
    end
end
