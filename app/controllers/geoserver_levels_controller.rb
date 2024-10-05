class GeoserverLevelsController < ApplicationController
  before_action :set_geoserver_level, only: %i[ show update destroy ]

  # GET /geoserver_levels
  def index
    @geoserver_levels = GeoserverLevel.all

    render json: @geoserver_levels
  end

  # GET /geoserver_levels/1
  def show
    render json: @geoserver_level
  end

  # POST /geoserver_levels
  def create
    @geoserver_level = GeoserverLevel.new(geoserver_level_params)

    if @geoserver_level.save
      render json: @geoserver_level, status: :created, location: @geoserver_level
    else
      render json: @geoserver_level.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /geoserver_levels/1
  def update
    if @geoserver_level.update(geoserver_level_params)
      render json: @geoserver_level
    else
      render json: @geoserver_level.errors, status: :unprocessable_entity
    end
  end

  # DELETE /geoserver_levels/1
  def destroy
    @geoserver_level.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geoserver_level
      @geoserver_level = GeoserverLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def geoserver_level_params
      params.require(:geoserver_level).permit(:geoserver_level, :geoserver_username, :geoserver_password)
    end
end
